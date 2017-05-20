defmodule Agitate.Web.StateResolver do
  alias Agitate.Web.StatesView
  alias Agitate.Web.StateQuery
  
  def by_id(%{ id: id }, _info) do
    state = StateQuery.by_id id
    { :ok, StatesView.json(state) }
  end

end
