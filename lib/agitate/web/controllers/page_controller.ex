defmodule Agitate.Web.PageController do
  use Agitate.Web, :controller

  def index(conn, _params) do
    conn |> render(:index)
  end
end
