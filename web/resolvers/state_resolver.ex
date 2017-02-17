defmodule Agitate.StateResolver do
  alias Agitate.State
  alias Agitate.District
  alias Agitate.Repo

  import Ecto.Query, only: [from: 2]

  def all(_args, _info) do
    { :ok, Repo.all(State) }
  end

  def by_district(%{ state_id: state_id }, _info) do
    query = from s in State,
      join: d in District,
      where: s.id == d.state_id,
      where: [ state_id: ^state_id ]

    { :ok, Repo.all(query) }
  end
end
