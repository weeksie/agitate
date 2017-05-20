defmodule Agitate.Web.Schema.Helpers do
  alias Agitate.Repo
  
  def by_id(model, ids) do
    import Ecto.Query
    model
    |> where([m], m.id in ^ids)
    |> Repo.all
    |> Map.new(&{&1.id, &1})
  end
end
