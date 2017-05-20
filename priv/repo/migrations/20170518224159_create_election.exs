defmodule Agitate.Repo.Migrations.CreateElection do
  use Ecto.Migration

  def change do
    create table(:elections) do
      add :year, :integer
      add :total_votes, :integer
      add :district_id, references(:districts)

      timestamps()
    end

  end
end
