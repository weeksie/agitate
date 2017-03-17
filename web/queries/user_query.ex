defmodule Agitate.UserQuery do
  alias Agitate.User
  alias Agitate.Repo

  import Comeonin.Bcrypt, only: [ checkpw: 2, dummy_checkpw: 0 ]
  
  # FIXME stop being dumb and catch the case of a not found user
  def by_id(id) do
    {:ok, Repo.get(User, id) |> Repo.preload(:applications) }
  end

  def by_email(email) do
    case Repo.get_by(User, email: email) do
      nil  -> { :error, nil }
      user -> { :ok, user }
    end
  end

  def login(email, password) do
    case by_email(email) do
      { :ok, user } ->
        if checkpw(password, user.password_hash) do
          { :ok, user }
        else
          { :error, "Invalid Login" }
        end
      { :error, _ } ->
        dummy_checkpw() # waste some time
        { :error, "Invalid Login" }
    end
  end
end
