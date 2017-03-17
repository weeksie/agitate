defmodule Agitate.SessionTest do
  use Agitate.ModelCase

  alias Agitate.Session


  @invalid_attrs %{}

  test "changeset with valid attributes" do
    user      = insert :user
    changeset = Session.changeset(%Session{}, %{ user_id: user.id })
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Session.changeset(%Session{}, @invalid_attrs)
    refute changeset.valid?
  end
end
