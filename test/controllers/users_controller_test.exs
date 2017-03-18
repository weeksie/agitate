defmodule Agitate.UsersControllerTest do
  use Agitate.ConnCase
  
  @valid_new_attrs %{email: "hagbard@example.com", password: "filthytoast"}
  @valid_update_attrs %{email: "tonguejack@shitbox.com"}
  @invalid_attrs %{email: "blah", password: "short"}

  test "POST /users", %{ conn: conn } do
    conn = post conn, users_path(conn, :create), user: @valid_new_attrs
    body = html_response conn, 201
    assert body =~ "Applications"
  end

  test "POST /users INVALID", %{ conn: conn } do
    conn = post conn, users_path(conn, :create), user: @invalid_attrs
    body = html_response conn, 422
    assert body =~ "email"
  end

  test "PATCH /users/ID", _ignored_conn do
    user  = insert :user
    conn  = guardian_sign_in user
    
    _conn = patch conn, users_path(conn, :update, user.id), user: @valid_update_attrs
    
    { :ok, updated } = Agitate.UserQuery.by_id user.id
    assert updated.email == @valid_update_attrs.email
  end
  
  test "PATCH /users/ID UNAUTH", %{ conn: conn } do
    user  = insert :user
    
    conn  = patch conn, users_path(conn, :update, user.id), user: @valid_update_attrs
    assert users_path(conn, :index) == redirected_to(conn)
  end

  test "GET /users/ID/edit", _ignored_conn do
    user = insert :user
    conn = guardian_sign_in user
    
    conn = get conn, users_path(conn, :edit, user.id)
    body = html_response conn, 200
    assert body =~ "form"
  end
end
