defmodule Agitate.Web.UsersView do
  use Agitate.Web, :view

  def render("created.html", assigns) do
    render "show.html", Map.put(assigns, :created, true)
  end
end
