defmodule Agitate.Web.ErrorView do
  use Agitate.Web, :view

  def render("unauthorized.json", message) do
    %{ error: message }
  end

  def render("api-bad-token.json", _message) do
    %{ error: "Sorry, youm must register for an API token to use the Agitate.Web API." }
  end
  
  # maybe change this to `unprocessable_entity.json`
  def render("422.json", %{ changeset: changeset }),
    do: %{ errors: translate_errors(changeset) }
  
  def render("404.html", _assigns) do
    "Page not found"
  end
  
  def render("500.html", _assigns) do
    "Internal server error"
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500.html", assigns
  end
  
  def translate_errors(changeset) do
    Ecto.Changeset.traverse_errors(changeset, &translate_error/1)
  end
end
