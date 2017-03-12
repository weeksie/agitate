defmodule Agitate.DistrictQuery do
  alias Agitate.District
  alias Agitate.ZipCode
  alias Agitate.State
  alias Agitate.Repo
  alias Agitate.DistrictView

  
  import Ecto.Query

  def by_zip_id(id) do
    zip = Repo.get(ZipCode, id) |> Repo.preload(:districts)
    
    { :ok, zip.districts }
  end
  
  def by_zip_code(code) do
    zip = Repo.get_by(ZipCode, code: code) |> Repo.preload(districts: [ :state, :representative ])

    { :ok, zip.districts }
  end

  def by_coords([ lat: lat, lon: lon ]) when is_float(lat) and is_float(lon) do
    query = from d in District,
      where: fragment("st_contains(?, st_makepoint(?, ?))", d.geom, ^lon, ^lat),
      preload: [ :state, :representative ]
    
    { :ok,  Repo.one(query) }
  end
  def by_coords([ lat: lat, lon: lon ]) do
    by_coords lat: String.to_float(lat), lon: String.to_float(lon)
  end
end
