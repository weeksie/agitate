defmodule Agitate.GuardianKey do
  def fetch() do
    System.get_env("GUARDIAN_SECRET_KEY") |> Poison.decode!
  end
end
