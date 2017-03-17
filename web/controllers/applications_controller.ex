defmodule Agitate.ApplicationsController do
  use Agitate.Web, :controller

  alias Agitate.Application
  alias Agitate.ErrorView
  alias Agitate.AuthHandler
  
  plug Guardian.Plug.EnsureAuthenticated, handler: AuthHandler
  plug Guardian.Plug.EnsureResource, handler: AuthHandler
  plug Guardian.Plug.LoadResource, handler: AuthHandler

  def index(conn, _params) do
    user = Guardian.Plug.current_resource(conn) |> Repo.preload(:applications)
    conn
    |> render("index.json", %{ applications: user.applications })
  end

  def create(conn, %{ "application" => %{ "name" => name } }) do
    user      = Guardian.Plug.current_resource conn
    changeset = Application.create_changeset %Application{}, %{ name: name, user_id: user.id }
    case Repo.insert changeset do
      { :ok, application } ->
        conn
        |> put_status(:created)
        |> render("show.json", %{ application: application })
      { :error, changeset }   ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(ErrorView, "422.json", %{ changeset: changeset })
    end
  end
end
