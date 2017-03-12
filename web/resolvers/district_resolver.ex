defmodule Agitate.DistrictResolver do
  alias Agitate.DistrictQuery
  alias Agitate.DistrictsView
  
  def by_coords(%{ lat: lat, lon: lon}, _resolver) do
    { :ok, districts } = DistrictQuery.by_coords lat: lat, lon: lon
    { :ok, DistrictsView.json(districts) }
  end
  
  def by_zip(_, %{ source: %{ id: id } }) do
    { :ok, districts } = DistrictQuery.by_zip_id id
    { :ok, Enum.map(districts, &DistrictsView.json/1) }
  end
end
