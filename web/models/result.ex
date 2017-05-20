defmodule Agitate.Result do
  use Agitate.Web, :model

  schema "results" do
    field :election_id, :integer
    field :party, :string
    field :total_votes, :integer
    field :wasted_votes, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:election_id, :party, :total_votes, :wasted_votes])
    |> validate_required([:election_id, :party, :total_votes, :wasted_votes])
  end
end
