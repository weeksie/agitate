defmodule Agitate.RepresentativeTest do
  use Agitate.ModelCase

  alias Agitate.Representative

  @valid_attrs %{district_id: 42, facebook: "some content", name: "some content", party: "some content", phone: "some content", term_count: 42, twitter: "some content", up_for_reelection: 42, url: "some content", wikipedia: "some content", years_in_office: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Representative.changeset(%Representative{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Representative.changeset(%Representative{}, @invalid_attrs)
    refute changeset.valid?
  end
end
