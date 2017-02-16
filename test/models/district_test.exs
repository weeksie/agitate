defmodule Agitate.DistrictTest do
  use Agitate.ModelCase

  alias Agitate.District

  @valid_attrs %{congress_end: "some content", congress_start: "some content", geom: "some content", name: "some content", state_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = District.changeset(%District{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = District.changeset(%District{}, @invalid_attrs)
    refute changeset.valid?
  end
end
