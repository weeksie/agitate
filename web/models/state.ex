defmodule Agitate.State do
  use Agitate.Web, :model
  
  schema "states" do
    field :short, :string
    field :name, :string
    has_many :districts, Agitate.District
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:short, :name])
    |> validate_required([:short, :name])
  end
end
