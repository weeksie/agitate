defmodule Agitate.StateResolver do
  alias Agitate.State
  alias Agitate.District
  alias Agitate.Repo

  import Ecto.Query, only: [from: 2]

  def all(_args, _info) do
    { :ok, Repo.all(State, preload: :districts) }
  end
  
  def by_abbrev(%{ short: short }, _info) do
    { :ok, Repo.get_by(State, short: short) }
  end
end
