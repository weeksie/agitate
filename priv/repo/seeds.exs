# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Agitate.Repo.insert!(%Agitate.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


priv_dir                     = :code.priv_dir :agitate
seed_states_sql              = File.read! to_string(priv_dir ++ "/data/seed_states.sql")
seed_districts_sql           = File.read! to_string(priv_dir ++ "/data/seed_districts.sql")
seed_district_geometries_sql = File.read! to_string(priv_dir ++ "/data/seed_district_geometries.sql")

Ecto.Adapters.SQL.query! Agitate.Repo, seed_states_sql
Ecto.Adapters.SQL.query! Agitate.Repo, seed_districts_sql
Ecto.Adapters.SQL.query! Agitate.Repo, seed_district_geometries_sql
Ecto.Adapters.SQL.query! Agitate.Repo, "DROP TABLE district_geoms"


