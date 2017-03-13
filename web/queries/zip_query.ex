defmodule Agitate.ZipQuery do
  alias Agitate.ZipCode
  alias Agitate.Repo
  
  def by_code(code) do
    zip = Repo.get_by(ZipCode, code: code) |> Repo.preload(districts: [ :state, :representative ])
    { :ok, zip }    
  end
end
