defmodule Agitate.Schema do
  use Absinthe.Schema
  import_types Agitate.Schema.Types

  query do
    field :states, list_of(:state) do
      resolve &Agitate.StateResolver.all/2
    end

    field :state, type: :state do
      arg :short, non_null(:string)
      resolve &Agitate.StateResolver.by_abbrev/2
    end
  end
end
