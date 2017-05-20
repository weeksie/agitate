defmodule Agitate.Web.StateTest do
  use Agitate.Web.ModelCase

  alias Agitate.Web.State

  @valid_attrs %{name: "some content", short: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = State.changeset(%State{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = State.changeset(%State{}, @invalid_attrs)
    refute changeset.valid?
  end
end
