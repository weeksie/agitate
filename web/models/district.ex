defmodule Agitate.District do
  use Agitate.Web, :model

  schema "districts" do
    field :name, :string
    field :geom, :string
    field :congress_start, :string
    field :congress_end, :string

    belongs_to :state, Agitate.State
    
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:state_id, :name, :geom, :congress_start, :congress_end])
    |> validate_required([:state_id, :name, :geom, :congress_start, :congress_end])
  end
end
