defmodule Agitate.Web.Schema do
  use Absinthe.Schema
  import_types Agitate.Web.Schema.Types

  query do
    field :state, type: :state do
      arg :id, non_null(:integer)
      resolve &Agitate.Web.StateResolver.by_id/2
    end
    
    field :zip_by_code, type: :zip_code do
      arg :code, non_null(:string)
      resolve &Agitate.Web.ZipCodeResolver.by_code/2
    end
    
    field :district_by_coords, type: :district do
      arg :lat, non_null(:float)
      arg :lon, non_null(:float)
      resolve &Agitate.Web.DistrictResolver.by_coords/2
    end
  end
end
