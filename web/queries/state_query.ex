defmodule Agitate.StateQuery do
  alias Agitate.District
  alias Agitate.ZipCode
  alias Agitate.State
  alias Agitate.Repo
  alias Agitate.DistrictView

  def by_id(id) do
    state = Repo.get State, id, preload:  :districts
  end
end
