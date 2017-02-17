defmodule Agitate.Repo.Migrations.MoveDistrictGeoToOwnTable do
  use Ecto.Migration

  def change do
    create table(:district_geometries) do
      add :district_id, references(:districts)
      add :geom, :geometry
    end
  end
end
