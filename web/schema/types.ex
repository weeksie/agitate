defmodule Agitate.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Agitate.Repo

  object :state do
    field :id, :id
    field :short, :string
    field :name, :string

    field :districts, list_of(:district), resolve: assoc(:districts)
  end
  
  object :district do
    field :id, :id
    field :name, :string

    field :congress_start, :string
    field :congress_end, :string
    field :geom, :string
    field :score, :float
    
    field :state, :state, resolve: assoc(:state)
  end

  object :zip_code do
    field :id, :id
    field :lat, :float
    field :lon, :float
    field :districts, list_of(:district), resolve: &Agitate.DistrictResolver.by_zip/2
  end
end
