defmodule Agitate.Repo.Migrations.CreateDistrict do
  use Ecto.Migration

  def up do
    execute "CREATE EXTENSION IF NOT EXISTS postgis"
    
    create table(:districts) do
      add :name, :string
      add :congress_start, :string
      add :congress_end, :string

      add :polsby_popper, :float
      add :schwartzberg, :float
      add :convex_hull, :float
      add :reock, :float

      add :efficiency_gap_r, :float
      add :efficiency_gap_d, :float
      
      add :state_id, references(:states)
      
      timestamps()
    end

  end
  
  def down do
    drop table(:districts)
    execute "DROP EXTENSION postgis"
  end
end
