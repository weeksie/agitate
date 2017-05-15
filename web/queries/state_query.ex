defmodule Agitate.StateQuery do
  alias Agitate.State
  alias Agitate.Repo

  def by_id(id) do
    state = Repo.get(State, id) |> Repo.preload(:districts)
    { :ok, state }
  end
end
