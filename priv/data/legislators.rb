#!/usr/bin/env ruby
require 'yaml'

legislators = YAML.load_file './legislators-current.yml'
social      = YAML.load_file './legislators-social-media.yml'

social_idx  = social.inject({ }) do |idx, soc|
  idx[soc['id']['bioguide']] = soc['social']
  idx
end

PARTIES = {
  'Democrat' => 'D',
  'Republican' => 'R',
  'Independent' => 'I'
}

File.open 'seed_representatives.sql', 'w' do |f|

  legislators.each do |l|
    terms = l['terms']
    id    = l['id']
    last  = terms.last
    next if last['type'] != 'rep'

    term_count = terms.reverse.inject 0 do |n, term|
      break if term['type'] != 'rep'
      n + 1
    end

    name              = l['name']['official_full'].gsub "'", "''"
    district          = last['district'].to_s.rjust 2, '0'
    state             = last['state']
    party             = PARTIES[last['party']] || 'U'
    up_for_reelection = last['end']
    url               = last['url']
    wikipedia         = id['wikipedia'].gsub "'", "''"
    
    contact           = social_idx[id['bioguide']] || { }

    facebook          = contact['facebook']
    twitter           = contact['twitter']
    
    f.puts <<EOSQL

-- START #{name}
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'#{name}', '#{party}', '#{facebook}', '#{twitter}',
'#{wikipedia}', '#{url}', '#{term_count}', '#{up_for_reelection}',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = '#{name}' AND party = '#{party}')
FROM states as s
WHERE s.id = d.state_id AND s.short = '#{state}' AND d.name = '#{district}';
-- END #{name}

EOSQL
    
  end
end
