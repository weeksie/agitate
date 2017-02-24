defmodule Agitate.ZipCode do
  use Agitate.Web, :model
  
  schema "zip_codes" do
    field :code, :string
    field :lat, :float
    field :lon, :float
    field :zip_geom_id, :integer

    timestamps()
  end
  
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:code, :lat, :lon, :zip_geom_id])
    |> validate_required([:code, :lat, :lon, :zip_geom_id])
  end
end
