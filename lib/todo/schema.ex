defmodule Todo.Schema do

  use Ecto.Schema
  schema "to_do" do
    field :task, :string
    field :done, :string
    field :priority, :string
  end
end
