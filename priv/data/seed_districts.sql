INSERT INTO districts (state_id, name, lat, lon, inserted_at, updated_at)
  (SELECT states.id AS state_id, cd114fp AS name,
          st_x(st_pointonsurface(geom)), st_y(st_pointonsurface(geom)),
          now(), now()
          FROM district_geoms
          JOIN states ON states.fips = district_geoms.statefp);
