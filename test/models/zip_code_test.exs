defmodule Agitate.ZipCodeTest do
  use Agitate.ModelCase

  alias Agitate.ZipCode

  @valid_attrs %{code: "some content", lat: "120.5", lon: "120.5", zip_geom_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = ZipCode.changeset(%ZipCode{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = ZipCode.changeset(%ZipCode{}, @invalid_attrs)
    refute changeset.valid?
  end
end
