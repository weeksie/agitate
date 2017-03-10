defmodule Agitate.District do
  use Agitate.Web, :model

  schema "districts" do
    field :name, :string

    field :convex_hull, :float
    field :lat, :float
    field :lon, :float
    field :efficiency_gap_r, :float
    field :efficiency_gap_d, :float
    field :geom, Geo.Geometry
    
    many_to_many :zip_codes, Agitate.ZipCode, join_through: "district_zip_codes"
    belongs_to :state, Agitate.State
    belongs_to :representative, Agitate.Representative
    
    timestamps()
  end
  
  @doc """
  Dumb as a dumb thing right now. Averaging the efficiency gap with the convex_hull score.
  """
  def score(%{ efficiency_gap_r: gap_r, efficiency_gap_d: gap_d, convex_hull: hull }) do
    compactness = 1.0 - hull
    max         = case Enum.max [ gap_r, gap_d ] do
                    nil -> 0
                    num -> num
                  end
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
