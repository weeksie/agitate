defmodule Agitate.StateQuery do
  alias Agitate.State
  alias Agitate.Repo

  def by_id(id) do
    Repo.get(State, id) |> Repo.preload(:districts)
  end
end
