defmodule Agitate.Web.StatesController do
  use Agitate.Web, :controller

  alias Agitate.Web.StateQuery
  def show(conn, %{ "id" => id }) do
    case StateQuery.by_id id do
      { :ok, state } ->
        conn
        |> put_status(200)
        |> render("show.json", state: state)
    end
  end
end
