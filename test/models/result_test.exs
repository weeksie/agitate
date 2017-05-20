defmodule Agitate.ResultTest do
  use Agitate.ModelCase

  alias Agitate.Result

  @valid_attrs %{election_id: 42, party: "some content", total_votes: 42, wasted_votes: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Result.changeset(%Result{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Result.changeset(%Result{}, @invalid_attrs)
    refute changeset.valid?
  end
end
