defmodule Agitate.StatesController do
  use Agitate.Web, :controller

  alias Agitate.StateQuery
  def show(conn, %{ "id" => id }) do
    case StateQuery.by_id id do
      { :ok, state } ->
        conn
        |> put_status(200)
        |> render("show.json", state: state)
    end
  end
end
