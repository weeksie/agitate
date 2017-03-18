defmodule Agitate.SessionsControllerTest do
  use Agitate.ConnCase

  test "POST /sessions/create", %{ conn: conn } do
    user = insert :user
    conn = post conn, sessions_path(conn, :create), user: %{ email: user.email, password: user.password }
    loc  = redirected_to conn
    flash = get_flash conn
    assert loc == users_path(conn, :index)
    assert flash["notice"]
  end
  
end
