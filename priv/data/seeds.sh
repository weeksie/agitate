#!/bin/bash

shp2pgsql priv/data/districtShapes/districts114.shp district_geoms | psql -d "$1"
shp2pgsql priv/data/cb_2015_us_zcta510_500k.shp zip_geoms | psql -d "$1"

cat priv/data/seed_states.sql | psql -d "$1"
cat priv/data/seed_zips.sql | psql -d "$1"
cat priv/data/seed_zip_latitudes.sql | psql -d "$1"
cat priv/data/seed_districts.sql | psql -d "$1"
cat priv/data/seed_district_geometries.sql | psql -d "$1"
cat priv/data/calculate_compactness.sql | psql -d "$1"
cat priv/data/election-results/efficiency_gaps.sql | psql -d "$1"
