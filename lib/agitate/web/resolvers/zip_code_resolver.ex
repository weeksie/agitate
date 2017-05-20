defmodule Agitate.Web.ZipCodeResolver do
  alias Agitate.Web.ZipQuery
  alias Agitate.Web.ZipsView

  def by_code(%{ code: code }, _info) do
    { :ok, zip_code } = ZipQuery.by_code code
    { :ok, ZipsView.json(zip_code) }
  end
end
