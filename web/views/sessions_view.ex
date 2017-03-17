defmodule Agitate.SessionsView do
  use Agitate.Web, :view

  def render("show.json", _params) do
    %{ logged_in: true }
  end
end
