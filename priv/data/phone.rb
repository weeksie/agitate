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

UPDATE districts AS d
SET representative = '#{representative}',
    phone          = '#{phone}'
FROM states as s
WHERE
  s.id = d.state_id AND d.name = '#{district}' AND s.short = '#{state}';
EOSQL
  end
end
