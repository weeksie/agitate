defmodule Agitate.Web.ZipsView do
  use Agitate.Web, :view

  alias Agitate.Web.DistrictsView
  
  def json(zip_code) do
    zip_code
    |> Map.take([ :id, :code, :lat, :lon ])
    |> Map.put(:districts, Enum.map(zip_code.districts, &DistrictsView.json/1 ))
  end
end
