defmodule Agitate.Web.RepresentativeResolver do
  alias Agitate.Repo

  def by_representative_id(%{ representative_id: id }, _info) do
    {:ok, Repo.get(Agitate.Web.Representative, id) }
  end
end
