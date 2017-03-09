defmodule Agitate.Repo.Migrations.CreateZipCode do
  use Ecto.Migration

  def change do
    create table(:zip_codes) do
      add :code, :string
      add :lat, :float
      add :lon, :float
      add :zip_geom_id, :integer

      timestamps()
    end
    create index :zip_codes, [:code]
  end
end
