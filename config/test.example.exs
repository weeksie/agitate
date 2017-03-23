use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :agitate, Agitate.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :comeonin, :bcrypt_log_rounds, 4
config :comeonin, :pbkdf2_rounds, 1

# Configure your database
config :agitate, Agitate.Repo,
  adapter: Ecto.Adapters.Postgres,
  types: Agitate.PostgresTypes,
  username: "postgres",
  database: "agitate_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox


config :guardian, Guardian,
  secret_key: %{
    "alg" => "HS512",
    "k" => "IBPWyhko_YKXpViMN2jF6GJkEiPQmJ3sJ2joXF3o9C5uOvb5CZ1P42rB-4-fT-Hsa-Srg8acZEdekgF2_wKEPA",
    "kty" => "oct",
    "use" => "sig"
  }

