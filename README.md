# Agitate

First make sure your database is up to date

```
mix ecto.create
mix ecto.migrate
```

## Import Congressional District Shapefiles

Importing shapefiles. First download your districts zip from http://cdmaps.polisci.ucla.edu/

```
curl -O http://cdmaps.polisci.ucla.edu/shp/districts114.zip
mv districts114.zip priv/data
cd priv/data
unzip districts114.zip
```

Make sure PostGIS is installed (http://postgis.net/install/) but
really, you'll probably just do a `brew install postgis`. Then run the migrations `mix ecto.migrate`

## Import Zipcode Shapefiles

Download [zip shapes](http://www2.census.gov/geo/tiger/GENZ2015/shp/cb_2015_us_zcta510_500k.zip) from www2.census.gov

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


# About Phoenix
To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


