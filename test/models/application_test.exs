defmodule Agitate.Web.ApplicationTest do
  use Agitate.Web.ModelCase

  alias Agitate.Web.Application

  @valid_attrs %{name: "some content", token: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Application.changeset(%Application{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Application.changeset(%Application{}, @invalid_attrs)
    refute changeset.valid?
  end
end
