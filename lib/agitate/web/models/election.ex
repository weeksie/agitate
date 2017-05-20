defmodule Agitate.Web.Election do
  use Agitate.Web, :model

  schema "elections" do
    field :year, :integer
    field :district_id, :integer
    field :total_votes, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:year, :district_id, :total_votes])
    |> validate_required([:year, :district_id, :total_votes])
  end
end
