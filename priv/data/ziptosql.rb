#!/usr/bin/env ruby
require 'csv'
File.open 'seed_zip_latitudes.sql', 'w' do |f|
  f.puts <<EOSQL
BEGIN;
INSERT INTO zip_codes (code, zip_geom_id, updated_at, inserted_at)
  (SELECT zip_geoms.code as code, zip_geoms.id as zip_geom_id, now(), now() FROM zip_geoms);
CREATE INDEX IF NOT EXISTS ON zip_codes (code);
EOSQL
  
  CSV.foreach "zip-lat-lon.csv", headers: true, header_converters: :symbol do |row|
    next unless row[:lat]
    f.puts "UPDATE zip_codes SET lat = #{row[:lat]}, lon = #{row[:lng]} WHERE code = '#{row[:zip]}';"
  end
  f.puts "END;"
end
