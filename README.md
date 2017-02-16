# Agitate

Importing shapefiles. First download your districts zip from http://cdmaps.polisci.ucla.edu/

```
curl -O http://cdmaps.polisci.ucla.edu/shp/districts114.zip
unzip districts114.zip
```

Make sure PostGIS is installed (http://postgis.net/install/) but
really, you'll probably just do a `brew install postgis`. Then run the migrations `mix ecto.migrate`

Now create a dummy `district_geoms` table and import the raw dump from the shapefile:

```
shp2pgsql districtShapes/districts114.shp district_geoms | psql -d agitate_dev
```

Now run the sql scripts to seed your data:

```
psql -d agitate_dev < priv/data/states.sql
psql -d agitate_dev < priv/data/fix_shapefile_import.sql
```

et viola!


# About Phoenix
To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


