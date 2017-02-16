Postgrex.Types.define(Agitate.PostgresTypes,
  [ Geo.PostGIS.Extension ] ++ Ecto.Adapters.Postgres.extensions(),
  json: Poison)
