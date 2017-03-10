defmodule Agitate.DistrictResolver do
  alias Agitate.District
  alias Agitate.ZipCode
  alias Agitate.State
  alias Agitate.Repo

  import Ecto.Query
  import Geo.PostGIS

  # TODO: simplify this now that geo is on the districts table.
  def by_coords(%{ lat: lat, lon: lon}, _resolver) do
    query = from d in District,
      join: dg in "district_geometries", where: dg.district_id == d.id,
      where: fragment("st_contains(?, st_makepoint(?, ?))", dg.geom, ^lon, ^lat),
      select: %{ id: d.id, name: d.name, geom: dg.geom, state_id: d.state_id,
                 lat: d.lat, lon: d.lon, representative_id: d.representative_id,
                 convex_hull: d.convex_hull, efficiency_gap_r: d.efficiency_gap_r,
                 efficiency_gap_d: d.efficiency_gap_d }
    
    
    { :ok, to_schema(Repo.one(query)) }
  end
  
  def by_zip(_, %{ source: %{ id: id } }) do
    zip   = Repo.get ZipCode, id
    code  = zip.code

    query = from d in District,
      join: dg in "district_geometries", where: dg.district_id == d.id,
      join: zg in "zip_geoms", where: st_intersects(dg.geom, zg.geom),
      where: zg.code == ^code,
      select: %{ id: d.id, name: d.name, geom: dg.geom, state_id: d.state_id,
                 lat: d.lat, lon: d.lon, representative_id: d.representative_id,
                 convex_hull: d.convex_hull, efficiency_gap_r: d.efficiency_gap_r,
                 efficiency_gap_d: d.efficiency_gap_d }

    { :ok, Enum.map(Repo.all(query), &to_schema/1) }
  end

  def to_schema(nil)  do
    nil
  end
  def to_schema(district = %{ state_id: state_id, geom: geom })  do
    score   = District.score district

    to_schema_only_geom(district)
    |> Map.put(:score, score)
    |> Map.put(:state, Repo.get(State, state_id))
  end

  def to_schema_only_geom(district = %{ geom: geom }) do
    geoJSON = Geo.JSON.encode(geom) |> Poison.encode!
    district
    |> Map.put(:geom, geoJSON)
  end
end
