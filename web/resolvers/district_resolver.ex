defmodule Agitate.DistrictResolver do
  alias Agitate.District
  alias Agitate.ZipCode
  alias Agitate.State
  alias Agitate.Repo

  import Ecto.Query

  def by_coords(%{ lat: lat, lon: lon}, _resolver) do
    query = from d in District,
      where: fragment("st_contains(?, st_makepoint(?, ?))", d.geom, ^lon, ^lat),
      select: %{ id: d.id, name: d.name, geom: d.geom, state_id: d.state_id,
                 lat: d.lat, lon: d.lon, representative_id: d.representative_id,
                 convex_hull: d.convex_hull, efficiency_gap_r: d.efficiency_gap_r,
                 efficiency_gap_d: d.efficiency_gap_d }
    
    { :ok, to_schema(Repo.one(query)) }
  end
  
  def by_zip(_, %{ source: %{ id: id } }) do
    zip = Repo.get(ZipCode, id) |> Repo.preload(:districts)
    
    { :ok, Enum.map(zip.districts, &to_schema/1) }
end

  def to_schema(nil)  do
    nil
  end
  def to_schema(district = %{ state_id: state_id })  do
    score   = District.score district

    district
    |> to_schema_only_geom()
    |> Map.put(:score, score)
    |> Map.put(:state, Repo.get(State, state_id))
  end

  def to_schema_only_geom(district = %{ geom: geom }) do
    geoJSON = Geo.JSON.encode(geom) |> Poison.encode!
    district
    |> Map.put(:geom, geoJSON)
  end
end
