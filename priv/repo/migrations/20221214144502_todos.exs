defmodule Todo.Repo.Migrations.Todos do
  use Ecto.Migration

  def change do
    create table(:to_do) do
      add :task, :string
  end
end
end
