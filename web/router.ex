defmodule Agitate.Router do
  use Agitate.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Agitate do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end


  scope "/api" do
    pipe_through :api

    forward "/", Absinthe.Plug, schema: Agitate.Schema
  end

  forward "/graphql", Absinthe.Plug.GraphiQL, schema: Agitate.Schema
end
