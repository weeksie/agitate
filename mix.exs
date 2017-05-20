defmodule Agitate.Mixfile do
  use Mix.Project

  def project do
    [app: :agitate,
     version: "0.0.2",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Agitate, []},
     applications: [:phoenix, :phoenix_pubsub, :phoenix_html, :cowboy, :logger, :gettext,
                    :phoenix_ecto, :postgrex, :geo, :absinthe, :absinthe_plug, :absinthe_ecto,
                    :phoenix_slime, :comeonin ]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      # Base deps
      {:phoenix, "~> 1.3.0-rc", override: true},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 2.6"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:exrm, "~> 1.0"},
      {:phoenix_slime, "~> 0.8.0"},

      # REST API
      {:cors_plug, "~> 1.2"},
      {:comeonin, "~> 3.0"},
      {:secure_random, "~> 0.5"},

      # Application
      {:geo, "~>1.3"},
      {:guardian, "~> 0.14"},
      {:flow, "~> 0.11"},
      {:csv, "~> 1.4.2"},

      # Application API/GraphQL
      {:absinthe, "~> 1.2.0"},
      {:absinthe_plug, "~> 1.1"},
      {:absinthe_ecto, git: "https://github.com/absinthe-graphql/absinthe_ecto.git"},

      # Testing
      {:ex_machina, "~> 2.0", only: :test},
      {:mix_test_watch, "~> 0.3", only: [:test, :dev], runtime: false}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"],
     "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end
