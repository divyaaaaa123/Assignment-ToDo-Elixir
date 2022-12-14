defmodule TodoTest do
  use ExUnit.Case
  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Todo.Repo)
  end
end
