defmodule Agitate.Web.PageControllerTest do
  use Agitate.Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Agitate!"
  end
end
