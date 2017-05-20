defmodule Agitate.Web.ApplicationsView do
  use Agitate.Web, :view

  def render("index.json", %{ applications: applications }) do
    %{ applications: render_many(applications, __MODULE__, "show.json") }
  end
  def render("show.json", %{ applications: application }),
    do: render("show.json", %{application: application})
  def render("show.json", %{ application: application }) do
    application
    |> Map.take([ :id, :name, :token, :user_id ])
  end
end
