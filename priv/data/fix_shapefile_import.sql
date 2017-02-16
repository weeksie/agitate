INSERT INTO districts (state_id, name, congress_start, congress_end, geom, inserted_at, updated_at)
  (SELECT states.id as state_id, district as name,
          startcong as congress_start, endcong as congress_end,
          geom, now(), now()
          FROM district_geoms
          JOIN states on states.name = district_geoms.statename);
