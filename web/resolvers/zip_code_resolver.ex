defmodule Agitate.ZipCodeResolver do
  alias Agitate.ZipCode
  alias Agitate.Repo

  def by_code(%{ code: code }, _info) do
    { :ok, Repo.get_by(ZipCode, code: code) }
  end
end
