defmodule Agitate.Repo.Migrations.DistrictZipCodes do
  use Ecto.Migration

  def change do
    create table(:district_zip_codes) do
      add :district_id, references(:districts)
      add :zip_code_id, references(:zip_codes)
    end
    create index :district_zip_codes, [ :district_id, :zip_code_id ]
  end
end
