defmodule Agitate.Repo.Migrations.CreateRepresentative do
  use Ecto.Migration

  def change do
    create table(:representatives) do
      add :name, :string
      add :phone, :string
      add :party, :string
      add :facebook, :string
      add :twitter, :string
      add :wikipedia, :string
      add :url, :string
      add :term_count, :integer
      add :up_for_reelection, :string
      add :years_in_office, :integer
      
      timestamps()
    end

    alter table(:districts) do
      add :representative_id, references(:representatives)
    end
  end
end
