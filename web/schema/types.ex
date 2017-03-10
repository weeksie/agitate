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
    
    field :geom, :string
    field :score, :float
    field :lat, :float
    field :lon, :float
    
    field :state, :state, resolve: assoc(:state)
    
    # okay, but why does the above work?
    # field :representative, :representative, resolve: assoc(:representative)
    field :representative, :representative do
      resolve fn district, _, _ ->
        rep_id = district.representative_id
        batch({Agitate.Schema.Helpers, :by_id, Agitate.Representative}, rep_id, fn batch_results ->
          { :ok, Map.get(batch_results, rep_id) }
        end)
      end
    end
  end

  object :representative do
    field :name, :string
    field :phone, :string
    field :party, :string
    field :facebook, :string
    field :twitter, :string
    field :wikipedia, :string
    field :url, :string
    field :term_count, :integer
    field :up_for_reelection, :string
    field :years_in_office, :integer    
  end
  
  object :zip_code do
    field :id, :id
    field :lat, :float
    field :lon, :float
    field :districts, list_of(:district), resolve: &Agitate.DistrictResolver.by_zip/2
  end
end
