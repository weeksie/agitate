defmodule Agitate.Plug.API do
  
  use Phoenix.Controller
  import Plug.Conn
  alias Agitate.Application
  alias Agitate.Repo
  
  def init(default), do: default

  def call(conn = %Plug.Conn{ params: %{ "token" => token } }, _default) do
    check_token conn, token
  end
  def call(conn, _default) do
    case get_req_header(conn, "authorization") do
      [ "Token " <> token ] -> check_token(conn, token)
      _else -> reject(conn)
    end
  end

  defp check_token(conn, token) do
    case Repo.get_by(Application, token: token) do
      nil -> reject(conn)
      app ->
        Application.incr app # fire and forget
        conn
    end    
  end
  
  defp reject(conn) do
    conn
    |> put_status(:forbidden)
    |> render(Agitate.ErrorView, "api-bad-token.json", %{})
    |> halt()
  end
end
