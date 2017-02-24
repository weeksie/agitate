defmodule Agitate.District do
  use Agitate.Web, :model

  schema "districts" do
    field :name, :string
    field :congress_start, :string
    field :congress_end, :string
    field :convex_hull, :float
    field :efficiency_gap_r, :float
    field :efficiency_gap_d, :float

    
    belongs_to :state, Agitate.State
    
    timestamps()
  end

  def score(%{ efficiency_gap_r: gap_r, efficiency_gap_d: gap_d, convex_hull: hull }) do
    max = Enum.max [ gap_r, gap_d ]
    compactness = 1.0 - hull
    (max + compactness) / 2.0
  end
  
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:state_id, :name, :congress_start, :congress_end])
    |> validate_required([:state_id, :name, :congress_start, :congress_end])
  end
end
