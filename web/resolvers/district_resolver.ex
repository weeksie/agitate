defmodule Agitate.DistrictResolver do
  alias Agitate.District
  alias Agitate.ZipCode
  alias Agitate.State
  alias Agitate.Repo

  import Ecto.Query
  import Geo.PostGIS

  def by_coords(params = %{ lat: lat, lon: lon}, _resolver) do
    query = from d in District,
      join: dg in "district_geometries", where: dg.district_id == d.id,
      where: fragment("st_contains(?, st_makepoint(?, ?))", dg.geom, ^lon, ^lat),
      select: %{ id: d.id, name: d.name, geom: dg.geom, state_id: d.state_id,
                 lat: d.lat, lon: d.lon, phone: d.phone, representative: d.representative,
                 convex_hull: d.convex_hull, efficiency_gap_r: d.efficiency_gap_r,
                 efficiency_gap_d: d.efficiency_gap_d }
    
    
    { :ok, to_schema(Repo.one(query)) }
  end
  
  def by_zip(_, resolver = %{ source: %{ id: id } }) do
    zip   = Repo.get ZipCode, id
    code  = zip.code

    query = from d in District,
      join: dg in "district_geometries", where: dg.district_id == d.id,
      join: zg in "zip_geoms", where: st_intersects(dg.geom, zg.geom),
      where: zg.code == ^code,
      select: %{ id: d.id, name: d.name, geom: dg.geom, state_id: d.state_id,
                 lat: d.lat, lon: d.lon, phone: d.phone, representative: d.representative,
                 convex_hull: d.convex_hull, efficiency_gap_r: d.efficiency_gap_r,
                 efficiency_gap_d: d.efficiency_gap_d }

    { :ok, Enum.map(Repo.all(query), &to_schema/1) }
  end

  def to_schema(nil)  do
    nil
  end
  def to_schema(district = %{ state_id: state_id, geom: geom })  do
    geoJSON = Geo.JSON.encode(geom) |> Poison.encode!
    score   = District.score district

    district
    |> Map.put(:geom, geoJSON)
    |> Map.put(:score, score)
    |> Map.put(:state, Repo.get(State, state_id))
  end
end
