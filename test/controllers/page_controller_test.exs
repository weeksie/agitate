defmodule Agitate.PageControllerTest do
  use Agitate.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Agitate!"
  end
end
