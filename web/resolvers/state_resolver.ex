defmodule Agitate.StateResolver do
  alias Agitate.StatesView
  alias Agitate.StateQuery
  
  def by_id(%{ id: id }, _info) do
    state = StateQuery.by_id id
    { :ok, StatesView.json(state) }
  end

end
