defmodule Agitate.Web.AuthHandler do
  use Agitate.Web, :controller

  @behaviour Guardian.Plug.ErrorHandler

  def no_resource(conn, _params) do
    conn
    |> put_flash(:error, "User not found")
    |> redirect(to: users_path(conn, :index))
  end

  def unauthenticated(conn, _params) do
    conn
    |> put_flash(:error, "Unauthenticated")
    |> redirect(to: users_path(conn, :index))
  end

  def unauthorized(conn, _params) do
    conn
    |> put_flash(:error, "Unauthorized")
    |> redirect(to: users_path(conn, :index))
  end
end
