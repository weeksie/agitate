defmodule Agitate.DistrictResolver do
  alias Agitate.District
  alias Agitate.ZipCode
  alias Agitate.Repo

  import Ecto.Query
  import Geo.PostGIS

  def by_zip(_, resolver = %{ source: %{ id: id } }) do
    zip   = Repo.get ZipCode, id
    code  = zip.code

    query = from d in District,
      join: dg in "district_geometries", where: dg.district_id == d.id,
      join: zg in "zip_geoms", where: st_intersects(dg.geom, zg.geom),
      where: zg.code == ^code,
      select: %{ id: d.id, name: d.name, geom: dg.geom,
                 convex_hull: d.convex_hull, efficiency_gap_r: d.efficiency_gap_r,
                 efficiency_gap_d: d.efficiency_gap_d }

    

  { :ok, Enum.map( Repo.all(query), fn (district = %{ geom: geom })  ->
      geoJSON = Geo.JSON.encode(geom) |> Poison.encode!
      score   = District.score district
      
      district
      |> Map.put(:geom, geoJSON)
      |> Map.put(:score, score)
    end) }
  end
end
