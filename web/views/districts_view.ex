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

  def render("index.json", %{ actions: actions } ) do
    %{ "__actions" => api_actions(actions)  }
  end

  # I find it odd that I have to use a plural key here. Not sure what
  # magic is forcing that.
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

  # These should be abstracted somewhere and shared among views
  def api_actions(actions) when is_list(actions) do
    Enum.into Enum.map(actions, &api_action/1), %{ }
  end
  
  def api_action([ action | tail ]) do
    [ name | args ] = tail
    { name, api_path(action, api_vars(args)) }
  end

  def api_vars(args) do
    Enum.reduce args, %{}, fn(arg, map) ->
      Map.put map, arg, api_var(arg)
    end
  end
  
  def api_var(arg) do
    Enum.join [ "${", arg, "}" ]
  end
  
  def api_path(path, vars) do
    URI.decode districts_url(Endpoint, path, vars)
  end
end
