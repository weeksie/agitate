defmodule Agitate.StateResolver do
  alias Agitate.State
  alias Agitate.Repo

  #import Ecto.Query, only: [from: 2]

  def all(_args, _info) do
    { :ok, Repo.all(State, preload: :districts) }
  end
  
  def by_abbrev(%{ short: short }, _info) do
    { :ok, Repo.get_by(State, short: short) }
  end
  
  def by_id(%{ id: id }, _info) do
    state = Repo.get( State, id) |> Repo.preload(:districts)
    { :ok, to_schema(state) }
  end

  def to_schema(state = %{ districts: districts }) do
    districts = Enum.map districts, &Agitate.DistrictResolver.to_schema_only_geom/1
    
    state
    |> Map.put(:districts, districts)
  end
end
