INSERT INTO district_geometries (district_id, geom)
       SELECT districts.id AS district_id, district_geoms.geom
               FROM district_geoms
               JOIN districts ON district_geoms.district = districts.name
               JOIN states ON states.id = districts.state_id
               WHERE states.name = district_geoms.statename;
