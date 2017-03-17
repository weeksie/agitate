defmodule Agitate.SessionsControllerTest do
  use Agitate.ConnCase

  test "POST /sessions/create", %{ conn: conn } do
    user = insert :user
    conn = post conn, sessions_path(conn, :create), user: %{ email: user.email, password: user.password }
    logged_in = json_response(conn, 201)["logged_in"]
    assert logged_in
    logged_in_user = Guardian.Plug.current_resource(conn)
    assert user.id == logged_in_user.id
  end
  
end
