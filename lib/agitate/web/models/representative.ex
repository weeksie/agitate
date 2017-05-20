defmodule Agitate.Web.Representative do
  use Agitate.Web, :model

  schema "representatives" do
    field :name, :string
    field :phone, :string
    field :party, :string
    field :facebook, :string
    field :twitter, :string
    field :wikipedia, :string
    field :url, :string
    field :term_count, :integer
    field :up_for_reelection, :string
    field :years_in_office, :integer

    has_one :district, Agitate.Web.District
    
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :phone, :party, :facebook, :twitter, :wikipedia, :url, :term_count, :up_for_reelection, :years_in_office])
    |> validate_required([:name, :phone, :party, :facebook, :twitter, :wikipedia, :url, :term_count, :up_for_reelection, :years_in_office])
  end
end
