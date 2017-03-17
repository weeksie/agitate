defmodule Agitate.ApplicationsControllerTest do
  use Agitate.ConnCase

  test "POST /applications", _ignored_conn do
    user = insert :user
    conn = guardian_sign_in user
    conn = post conn, applications_path(conn, :create), application: %{ name: "Conspiracy" }

    body = json_response(conn, 201)
    assert body["name"] == "Conspiracy"
  end

  test "POST /applications ERROR", _ignored_conn do
    user = insert :user
    conn = guardian_sign_in user
    conn = post conn, applications_path(conn, :create), application: %{ name: "" }
    body = json_response(conn, 422)

    assert body["errors"]["name"]
  end

  test "GET /applications", _ignored_conn do
    user = insert :user
    conn = guardian_sign_in user
    conn = get conn, applications_path(conn, :index)
    body = json_response(conn, 200)

    # check factory.ex default stub user has one application
    assert 1 == Enum.count(body["applications"])
  end
end  
