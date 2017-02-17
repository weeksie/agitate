defmodule Agitate.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Agitate.Repo

  object :state do
    field :id, :id
    field :short, :string
    field :name, :string

    field :districts, list_of(:district)
  end

  object :district do
    field :id, :id
    field :name, :string

    field :congress_start, :string
    field :congress_end, :string

    field :state, :state, resolve: assoc(:state)
  end
end
