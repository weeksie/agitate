defmodule Agitate.Web.UsersController do
  use Agitate.Web, :controller
  use Guardian.Phoenix.Controller

  alias Agitate.Web.User
  alias Agitate.Web.UserQuery
  alias Agitate.Repo

  plug :scrub_params, "user" when action in [ :create, :update ]
  plug Guardian.Plug.LoadResource, handler: AuthHandler


  def index(conn, _params, user, _claims) do
    user = if user do
      Repo.preload(user, :applications)
    end

    conn
    |> assign(:changeset, User.new_changeset())
    |> assign(:action, users_path(conn, :create))
    |> assign(:user, user)
    |> render(:index)
  end

  def new(conn, _params, _user, _claims) do
    conn
    |> assign(:changeset, User.new_changeset())
    |> assign(:action, users_path(conn, :create))
    |> render("new.html")
  end

  def show(conn, _params, nil, _claims), do: redirect_to_root(conn)
  def show(conn, _params, user, _claims) do
    render conn, "show.html", user: user
  end

  def create(conn, %{ "user" => params }, _user, _claims) do
    changeset = User.registration_changeset %User{}, params
    case Repo.insert(changeset) do
      { :ok, user } ->
        conn
        |> put_status(:created)
        |> Guardian.Plug.sign_in(user)
        |> assign(:user, user)
        |> render("created.html")
      { :error, changeset } ->
        conn
        |> put_status(:unprocessable_entity)
        |> assign(:changeset, changeset)
        |> assign(:action, users_path(conn, :create))
        |> render("new.html")
    end
  end

  def update(conn, _params, nil, _claims), do: redirect_to_root(conn)
  def update(conn, %{ "id" => id, "user" => params }, user, _claims) do
    if id != to_string(user.id) do
      redirect_to_root(conn)
    else
      { :ok, user } = UserQuery.by_id id
      changeset     = User.registration_changeset user, params
      case Repo.update(changeset) do
        { :ok, user } ->
          redirect conn, to: users_path(conn, :show, user.id)
        { :error, changeset } ->
          conn
          |> assign(:changeset, changeset)
          |> assign(:action, users_path(conn, :update, user.id))
          |> render("edit.html")
      end
    end
  end

  def edit(conn, _params, nil, _claims), do: redirect_to_root(conn)
  def edit(conn, %{ "id" => _id }, user, _claims) do
    changeset = User.registration_changeset user
    conn
    |> assign(:changeset, changeset)
    |> assign(:action, users_path(conn, :update, user.id))
    |> render("edit.html")
  end

  defp redirect_to_root(conn) do
    redirect conn, to: users_path(conn, :index)
  end
end
