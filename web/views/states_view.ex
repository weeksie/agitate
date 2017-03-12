defmodule Agitate.StatesView do
  use Agitate.Web, :view
  alias Agitate.DistrictsView

  def render("show.json", %{ state: state }) do
    json state
  end
  
  def shallow_json(state) do
    state
    |> Map.take([ :id, :short, :name ])
  end
  def json(state = %{ disricts: districts }) do
    shallow_json(state)
    |> Map.put(:districts, Enum.map(districts, &DistrictsView.shallow_json/1 ))
  end
end
