defmodule Agitate.Web.ZipQuery do
  alias Agitate.Web.ZipCode
  alias Agitate.Repo
  
  def by_code(code) do
    zip = Repo.get_by(ZipCode, code: code) |> Repo.preload(districts: [ :state, :representative ])
    { :ok, zip }    
  end
end
