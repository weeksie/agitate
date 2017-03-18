defmodule Agitate.SessionsController do
  use Agitate.Web, :controller

  alias Agitate.UserQuery

  plug :scrub_params, "user" when action in [ :create ]
  
  def create(conn, %{ "user" => %{ "email" => email, "password" => password } }) do
    case UserQuery.login email, password do
      { :ok, user } ->
        conn
        |> Guardian.Plug.sign_in(user)
        |> put_flash(:notice, "Thanks for logging in " <> email)
        |> redirect(to: users_path(conn, :index))

      { :error, _message } ->
        conn
        |> put_flash(:auth_error, "Sorry that email or password does not match our records")
        |> redirect(to: users_path(conn, :index))
    end
  end

  def delete(conn, _params) do
    conn
    |> Guardian.Plug.sign_out()
    |> redirect(to: "/")
  end
end
