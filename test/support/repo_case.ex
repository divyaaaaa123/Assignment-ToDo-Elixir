defmodule Todo.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias Todo.Repo

      import Ecto
      import Ecto.Query
      import Todo.RepoCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Todo.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Todo.Repo, {:shared, self()})
    end

    :ok
  end
end
