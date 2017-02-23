

INSERT INTO district_geometries (district_id, geom, convex_hull_geom)
       SELECT districts.id AS district_id,
              district_geoms.geom,
              ST_ConvexHull(district_geoms.geom) AS convex_hull_geom
       FROM district_geoms
              JOIN districts ON district_geoms.district = districts.name
              JOIN states ON states.id = districts.state_id
       WHERE states.name = district_geoms.statename;


