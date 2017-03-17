defmodule Agitate.Router do
  use Agitate.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Guardian.Plug.VerifySession
    plug Guardian.Plug.LoadResource
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Agitate do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/developers", UsersController, as: :users
    resources "/applications", ApplicationsController
    resources "/sessions", SessionsController, only: [ :create, :destroy ]
  end


  scope "/api", Agitate do
    pipe_through :api

    resources "/districts", DistrictsController, only: [ :index ]
  end

  forward "/graphql", Absinthe.Plug.GraphiQL, schema: Agitate.Schema
end
