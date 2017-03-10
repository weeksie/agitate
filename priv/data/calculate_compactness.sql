-- https://www.azavea.com/blog/2016/07/11/measuring-district-compactness-postgis/

UPDATE districts d
 SET polsby_popper = 4 * pi() * (ST_Area(dg.geom) / (ST_Perimeter(dg.geom)^2)),
     schwartzberg  = 1 / (ST_Perimeter(dg.geom)) / (2 * pi() * (|/ST_Area(dg.geom)/pi())),
     convex_hull   = ST_Area(dg.geom) / ST_Area(dg.convex_hull_geom)
 FROM district_geometries dg
 WHERE dg.district_id = d.id;

DROP TABLE district_geometries; -- no longer needed


