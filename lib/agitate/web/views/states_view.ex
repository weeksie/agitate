defmodule Agitate.Web.StatesView do
  use Agitate.Web, :view
  alias Agitate.Web.DistrictsView

  def render("show.json", %{ state: state }) do
    json state
  end
  
  def shallow_json(state) do
    state
    |> Map.take([ :id, :short, :name ])
  end
  
  def json(state) do
    shallow_json(state)
    |> Map.put(:districts, Enum.map(state.districts, &DistrictsView.shallow_json/1 ))
  end
end
