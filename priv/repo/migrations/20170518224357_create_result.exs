defmodule Agitate.Repo.Migrations.CreateResult do
  use Ecto.Migration

  def change do
    create table(:results) do
      add :election_id, references(:elections)
      add :party, :string
      add :total_votes, :integer
      add :wasted_votes, :integer

      timestamps()
    end

  end
end
