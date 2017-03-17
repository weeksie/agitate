defmodule Agitate.Application do
  use Agitate.Web, :model

  schema "applications" do
    field :name, :string
    field :token, :string
    belongs_to :user, Agitate.User

    timestamps()
  end

  def create_changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :user_id])
    |> put_change(:token, SecureRandom.uuid)
    |> unique_constraint(:token)
    |> validate_required([:name, :token, :user_id])
  end
  
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required(:name)
  end
end
