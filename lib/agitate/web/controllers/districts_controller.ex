defmodule Agitate.Web.DistrictsController do
  use Agitate.Web, :controller

  alias Agitate.Web.DistrictQuery

  def index(conn, %{ "zip_code" => zip_code }) do
    case DistrictQuery.by_zip_code zip_code do
      { :ok, districts } ->
        conn
        |> put_status(200)
        |> render("index.json", districts: districts)
     # HAHAHAHA Error handling? What error handling?
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

  def index(conn, _params) do
    conn
    |> put_status(200)
    |> render("index.json", actions: index_actions())
  end

  def index_actions() do
    [
      [ :index, :by_zip_code, :zip_code ],
      [ :index, :by_coords, :lat, :lon ]
    ]
  end

end
