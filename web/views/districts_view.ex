defmodule Agitate.DistrictsView do
  use Agitate.Web, :view

  alias Agitate.District
  alias Agitate.StatesView
  alias Agitate.RepresentativesView
  alias Agitate.Endpoint

  import Agitate.Router.Helpers
  
  def render("index.json", %{ districts: districts }) do
    %{ districts: render_many(districts, __MODULE__, "show.json") }
  end

  # I find this odd that I have to use a plural key here.
  def render("show.json", %{ districts: district }) do
    json district
  end
  
  def json(nil)  do
    nil
  end
  
  def json(district)  do
    district
    |> Map.take([ :id, :name, :lat, :lon ])
    |> Map.put(:geom, geom_to_json(district.geom))
    |> Map.put(:score, District.score(district))
    |> Map.put(:state, StatesView.shallow_json(district.state))
    |> Map.put(:representative, RepresentativesView.shallow_json(district.representative))
  end

  # currently this means only geometry. If we need to do any more
  # screwing around, it's easy enough to refactor.
  def shallow_json(district) do
    district
    |> Map.take([ :id ])
    |> Map.put(:geom, geom_to_json(district.geom))
  end
  
  def geom_to_json(geom) do
    Geo.JSON.encode(geom) |> Poison.encode!
  end

  # not sure if views are the places to put these but for now it'll do
  def actions() do
    %{ __actions: %{
         by_zip_code: districts_path(Endpoint, :index, zip_code: "${zip_code}"),
         by_coords: districts_path(Endpoint, :index, lat: "${lat}", lon: "${lon}")
       }
    }
  end
end
