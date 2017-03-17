use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :agitate, Agitate.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  # watchers: [node: ["node_modules/webpack/bin/webpack.js", "--watch", "--color"]]
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin",
                    cd: Path.expand("../", __DIR__)]]


# Watch static and templates for browser reloading.
config :agitate, Agitate.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :agitate, Agitate.Repo,
  adapter: Ecto.Adapters.Postgres,
  types: Agitate.PostgresTypes,
  username: "weeksie",
  database: "agitate_dev",
  hostname: "localhost",
  pool_size: 10

config :guardian, Guardian,
  secret_key: %{
    "alg" => "HS512",
    "k" => "LNuTcNjLGNupYhHumk9ADvN1afOh23lr81mKH8mT7DbOh1Xkk3JxcwVkTM1LotyxBiBcESeKoxywmYJr5UEy1Q",
    "kty" => "oct",
    "use" => "sig"
  }
