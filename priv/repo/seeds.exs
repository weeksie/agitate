#################################################################################
#
# ATTN!!!! Use seeds.sh instead. Too much of this relies on shell
# commands to make sense running from Elixir
#
#################################################################################


# priv_dir                     = :code.priv_dir :agitate
# seed_states_sql              = File.read! to_string(priv_dir ++ "/data/seed_states.sql")
# seed_districts_sql           = File.read! to_string(priv_dir ++ "/data/seed_districts.sql")
# seed_district_geometries_sql = File.read! to_string(priv_dir ++ "/data/seed_district_geometries.sql")
# seed_compactness_sql         = File.read! to_string(priv_dir ++ "/data/calculate_compactness.sql")
# seed_efficiency_gaps_sql     = File.read! to_string(priv_dir ++ "/data/election-results/efficiency_gaps.sql")

# System.cmd to_string(priv_dir ++ "/data/geoms_from_shapefiles.sh"), [ "agitate_dev" ]

# Ecto.Adapters.SQL.query! Agitate.Repo, seed_states_sql
# Ecto.Adapters.SQL.query! Agitate.Repo, seed_districts_sql
# Ecto.Adapters.SQL.query! Agitate.Repo, seed_district_geometries_sql
# Ecto.Adapters.SQL.query! Agitate.Repo, seed_compactness_sql
# Ecto.Adapters.SQL.query! Agitate.Repo, seed_efficiency_gaps_sql
# Ecto.Adapters.SQL.query! Agitate.Repo, "DROP TABLE district_geoms"


