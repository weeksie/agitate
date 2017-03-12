defmodule Agitate.DistrictsController do
  use Agitate.Web, :controller

  alias Agitate.DistrictQuery
  
  def index(conn, %{ "zip_code" => zip_code }) do
    case DistrictQuery.by_zip_code zip_code do
      { :ok, districts } ->
        conn
        |> put_status(200)
        |> render("index.json", districts: districts)
    end
  end

  def index(conn, %{ "lat" => lat, "lon" => lon }) do
    case DistrictQuery.by_coords lat: lat, lon: lon do
      { :ok, district } ->
        conn
        |> put_status(200)
        |> render("show.json", districts: district)
    end
  end
end
