# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :agitate,
  ecto_repos: [Agitate.Repo]

# Configures the endpoint
config :agitate, Agitate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qwQ2vKsHBvZgNfYEIU/2YBkgSJTcrbSyE5UnKs59ZjUjxPJqn8RChB6DQXR+xstx",
  render_errors: [view: Agitate.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Agitate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# HAML
config :phoenix, :template_engines, haml: PhoenixHaml.Engine

# Authentication
config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "Agitate",
  ttl: { 30, :days },
  allowed_drift: 2000,
  verify_issuer: true, # optional
  serializer: Agitate.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
