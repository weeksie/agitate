INSERT INTO districts (state_id, name, congress_start, congress_end, inserted_at, updated_at)
  (SELECT states.id AS state_id, district AS name,
          startcong AS congress_start, endcong AS congress_end,
          now(), now()
          FROM district_geoms
          JOIN states ON states.name = district_geoms.statename);
