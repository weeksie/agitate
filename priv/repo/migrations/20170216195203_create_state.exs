defmodule Agitate.Repo.Migrations.CreateState do
  use Ecto.Migration

  def change do
    create table(:states) do
      add :short, :string
      add :name, :string
      add :fips, :string
    end

  end
end
