defmodule Agitate.Application do
  use Agitate.Web, :model
  alias Agitate.Repo
  
  schema "applications" do
    field :name, :string
    field :token, :string
    field :request_count, :integer
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

  def incr(app = %__MODULE__{ request_count: nil }) do
    incr_count app, 0
  end
  def incr(app = %__MODULE__{ request_count: count }) do
    incr_count app, count
  end
  
  defp incr_count(application, count) do
    change = Ecto.Changeset.change application, request_count: count + 1
    Repo.update change
  end
end
