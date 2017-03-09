# Agitate

First make sure your database is up to date

```
mix ecto.create
mix ecto.migrate
```

Make sure PostGIS is installed (http://postgis.net/install/) but
really, you'll probably just do a `brew install postgis`. Then run the migrations `mix ecto.migrate`

## Import Zipcode Shapefiles

Download [zip shapes](http://www2.census.gov/geo/tiger/GENZ2015/shp/cb_2015_us_zcta510_500k.zip) from www2.census.gov

Sure would like to get zip codes in 20m format but the only thing they seem to have is 500k.

```
curl -O http://www2.census.gov/geo/tiger/GENZ2015/shp/cb_2015_us_zcta510_500k.zip
mv cb_2015_us_zcta510_500k.zip priv/data
cd priv/data
unzip cb_2015_us_zcta510_500k.zip
```

Now (from project root) run the sql scripts to seed your data:

```
./priv/data/seeds.sh agitate_dev
```

For non dev environments sub out the database name, e.g. `./priv/data/seeds.sh agitate_prod`

et viola!


## Acknowledgements

I've been scraping data from anywhere and everywhere.

* Congressional district shapefiles from http://www2.census.gov
* Election results for calculating vote efficiency: http://www.fec.gov/pubrec/electionresults.shtml
* Congressional office phone numbers are from http://clerk.house.gov/member_info/ttd.aspx
* Legislator info https://github/unitedstates/congress-legislators

Most of these have been munged and transformed through a series of
very ad hoc ruby scripts peppered throughout the `priv/data` directory.



