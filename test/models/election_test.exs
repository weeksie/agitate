defmodule Agitate.ElectionTest do
  use Agitate.ModelCase

  alias Agitate.Election

  @valid_attrs %{district_id: 42, total_votes: 42, year: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Election.changeset(%Election{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Election.changeset(%Election{}, @invalid_attrs)
    refute changeset.valid?
  end
end
