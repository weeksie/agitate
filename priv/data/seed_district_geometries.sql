INSERT INTO district_geometries (district_id, geom, convex_hull_geom)
       SELECT districts.id AS district_id,
              district_geoms.geom,
              ST_ConvexHull(district_geoms.geom) AS convex_hull_geom
       FROM district_geoms
              JOIN districts ON district_geoms.cd114fp = districts.name
              JOIN states ON states.id = districts.state_id
       WHERE states.fips = district_geoms.statefp;


