defmodule Agitate.Repo.Migrations.CreateDistrict do
  use Ecto.Migration

  def up do
    execute "CREATE EXTENSION IF NOT EXISTS postgis"
    
    create table(:districts) do
      add :state_id, references(:states)

      add :name, :string
      add :geom, :geometry
      
      add :congress_start, :string
      add :congress_end, :string
      
      timestamps()
    end

  end
  
  def down do
    drop table(:districts)
    execute "DROP EXTENSION postgis"
  end
end
