defmodule Agitate.User do
  use Agitate.Web, :model

  alias Comeonin.Bcrypt
  
  schema "users" do
    field :email, :string
    field :password_hash, :string
    field :password, :string, virtual: true

    has_many :applications, Agitate.Application
    has_many :sessions, Agitate.Session
    timestamps()
  end


  # FIXME these can probably? be compressed into one changeset. . . .
  def new_changeset() do
    cast %Agitate.User{}, %{}, [ :email, :password ]
  end
  
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [ :email ])
    |> unique_constraint(:email)
    |> validate_required(:email)
    |> validate_length(:email, min: 3, max: 255)
    |> validate_format(:email, ~r/@/)
  end

  def password_changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [ :password ])
    |> validate_length(:password, min: 8)
    |> hash_password()
  end

  def registration_changeset(struct, params \\ %{}) do
    changeset(struct, params) |> password_changeset(params)
  end
  
  defp hash_password(%{ valid?: true, changes: %{ password: password } } = changeset) do
    put_change changeset, :password_hash, Bcrypt.hashpwsalt(password)
  end
  
  defp hash_password(changeset) do
    changeset
  end
end
