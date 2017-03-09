#! /usr/bin/env ruby

# All data from http://www.fec.gov/pubrec/electionresults.shtml
#
# SHTML??? Fucking hell. What year is this? All of my web apps 
# are handwritten C Apache modules :/

require 'csv'
require 'byebug'
require 'aasm'
current = :start

class Election
  include AASM
  
  attr_accessor :state, :district, :current_party, :vote_count, :votes, :gaps

  aasm do
    state :uninitialized, initial: true
    state :reading_district
    state :calculating_district

    event :initialized do
      transitions to: :reading_district
    end

    event :read_district do
      transitions to: :calculating_district
    end

    event :finished do
      transitions to: :uninitialized
    end
  end

  
  def initialize
    @vote_count = 0
    @votes      = {
      # STATE-DISTRICT => PARTY => VOTES
    }
    @gaps       = {
      # STATE-DISTRICT => PARTY => GAP
    }
    @sql        = File.open "efficiency_gaps.sql", 'w'
    @sql.puts <<CREATE_TABLE
drop table if exists efficiency_gaps;
create table efficiency_gaps (id serial, state varchar, district varchar, party varchar, gap float);
CREATE_TABLE
  end

  def average!
    gaps.each do |gap_key, party_gaps|
      s, d = gap_key.split '-'
      party_gaps.each do |party, gaps|
        average_gap = gaps.inject(:+).to_f / gaps.length
        puts "#{gaps.map(&:to_s).join(',')}: #{average_gap}"
        @sql.puts <<EOSQL
INSERT INTO efficiency_gaps (state, district, party, gap) VALUES
       ('#{s}', '#{d}', '#{party}', '#{sprintf('%0.2f', average_gap)}');
EOSQL
      end
    end

    @sql.puts <<EOUPDATE

UPDATE districts d
  SET efficiency_gap_r = eg.gap
FROM efficiency_gaps eg
JOIN states s ON s.short = eg.state
WHERE d.name = eg.district AND d.state_id = s.id AND party = 'R';

UPDATE districts d
  SET efficiency_gap_d = eg.gap
FROM efficiency_gaps eg
JOIN states s ON s.short = eg.state
WHERE d.name = eg.district AND d.state_id = s.id AND party = 'D';

EOUPDATE
  end
  
  def process(row)
    return unless active? row
    if uninitialized?
      init row
    elsif reading_district?
      read_district row
    end
  end

  def read_district(row)
    if row[:d] != district
      calculate_district
      set_variables row
    end
    
    if row[:party] != current_party
      set_variables row
    end
    
    add_votes row
  end

  # Based on  Gershenson, Kraft, and Lau "Comparing Metrics of Gerrymandering"
  # 
  #   http://www.benkraft.org/files/gerrymandering.pdf 
  def calculate_district
    total_votes = votes[key].inject 0 do |count, (k, v)|
      count + v
    end

    votes[key].each do |party, votes|
      next unless party =~ /\AR|D\z/i
      gap = nil
      pct = votes / total_votes

      if pct > 0.5
        gap = pct - 0.5
      else
        gap = pct
      end
      
      gaps[key][party] ||= [ ]
      gaps[key][party] << gap
    end
  end
  
  def add_votes(row)
    votes[key][current_party] ||= 0
    votes[key][current_party]  += to_f row[:general_votes]
  end
  
  def set_variables(row)
    self.state         = row[:state_abbreviation]
    self.district      = row[:d]
    self.current_party = row[:party]
    self.vote_count    = to_f row[:general_votes]
    
    self.votes[key]   ||= { }
    self.gaps[key]    ||= { }
  end
  
  def init(row)
    if row[:general_votes]
      set_variables row
      initialized!
    end
  end

  def active?(row)
    !!row[:general_votes]
  end
  
  def key
    [ state, district ].join '-'
  end
  
  # clean commas out of e.g. 193,000
  def to_f(general_votes_cell)
    general_votes_cell.gsub(/[^0-9]/, '').to_f
  end
end

election = Election.new

CSV.foreach '2012-house-and-senate.csv', headers: true, header_converters: :symbol do |row|
  election.process row
end

CSV.foreach '2010-house-and-senate.csv', headers: true, header_converters: :symbol do |row|
  election.process row
end

election.average!

