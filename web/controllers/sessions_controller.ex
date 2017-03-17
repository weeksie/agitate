defmodule Agitate.SessionsController do
  use Agitate.Web, :controller

  alias Agitate.UserQuery

  plug :scrub_params, "user" when action in [ :create ]
  
  def create(conn, %{ "user" => %{ "email" => email, "password" => password } }) do
    case UserQuery.login email, password do
      { :ok, user } ->
        conn
        |> Guardian.Plug.sign_in(user)
        |> put_status(:created)
        |> render("show.json")

      { :error, message } ->
        conn
        |> put_status(:unauthorized)
        |> assign(:message, message)
        |> render("error.json")
    end
  end

  def delete(conn, _params) do
    conn
    |> Guardian.Plug.sign_out()
    |> redirect(to: "/")
  end
end
