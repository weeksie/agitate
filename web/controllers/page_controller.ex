defmodule Agitate.PageController do
  use Agitate.Web, :controller

  def index(conn, %{ "zip" => zip_code }) do
    conn
    |> assign(:zip_code, zip_code)
    |> render("index.html")
  end
end
