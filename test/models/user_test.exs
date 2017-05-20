defmodule Agitate.Web.UserTest do
  use Agitate.Web.ModelCase

  alias Agitate.Web.User

  @valid_attrs %{email: "hagbard@example.com"}
  @valid_pwd_attrs %{email: "hagbard@example.com", password: "filthytoast"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "changeset wtih bad email fmt" do
    changeset = User.changeset(%User{}, Map.put(@valid_attrs, :email, "fnord"))
    refute changeset.valid?
  end

  test "password changeset" do
    changeset = User.password_changeset(%User{}, @valid_pwd_attrs)
    assert changeset.valid?
    refute changeset.changes.password_hash == @valid_pwd_attrs.password
  end

  test "registration changeset" do
    changeset = User.registration_changeset(%User{}, @valid_pwd_attrs)
    assert changeset.valid?
  end

  test "update user changeset" do
    user      = insert :user
    changeset = User.registration_changeset user, %{ email: "tonguejack@shitbox.co" }
    assert changeset.valid?
  end
end
