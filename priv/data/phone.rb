#!/usr/bin/env ruby
require 'csv'

File.open 'seed_phone_numbers.sql', 'w' do |f|

  CSV.foreach 'phone-directory.csv', headers: true, header_converters: :symbol do |row|
    representative = row[:representative].gsub(/[\[\]]/,'').split(',').reverse.join(' ').strip.gsub "'", "''"
    state          = row[:state]
    phone          = row[:phone].gsub /(\d{3})-(\d{4})/, '(202) \1-\2'
    district       = case row[:district]
                     when /([0-9]+)/
                       $1.rjust 2, '0'
                     else
                       '00'
                     end
    
    f.puts <<EOSQL

UPDATE representatives AS r
SET phone = '#{phone}'
FROM districts as d, states as s
WHERE
  r.id = d.representative_id AND s.id = d.state_id AND d.name = '#{district}' AND s.short = '#{state}';
EOSQL
  end
end
