
import Ecto.Query
defmodule Todo do
  def add(task) do
    add_task = %Todo.Schema{task: task,done: "incomplete"}
  Todo.Repo.insert(add_task)

  end


  def delete_task(id) do
    _old_task = Todo.Schema |> Todo.Repo.get(id)
    |> Todo.Repo.delete()

  end

  def get_all_tasks() do
    query = from task in Todo.Schema, order_by: [desc: task.id]
    Todo.Repo.all(query)
  end
  def changeset(task , params \\ %{}) do
    task
    |> Ecto.Changeset.cast(params , [:task,:done])
    |> Ecto.Changeset.validate_required([:task , :done])
  end

  def update( id ,task) do
    prev_task = Todo.Schema |> Todo.Repo.get(id)
    prev_task
    |> changeset(%{task: task})
    |> Todo.Repo.update()
  end
  def toggle_status(id,status) do
    prev_task=Todo.Schema |> Todo.Repo.get(id)
    if status=="complete" do
        prev_task
        |> changeset(%{done: "incomplete"})
        |> Todo.Repo.update()
    else
        prev_task
        |> changeset(%{done: "complete"})
        |> Todo.Repo.update()
    end
  end
  def active() do
    query= from task in Todo.Schema,
            where: task.done == "incomplete"
    Todo.Repo.all(query)
  end
  def completed() do
    query= from task in Todo.Schema,
            where: task.done == "complete"
    Todo.Repo.all(query)
  end
  def delete_completed() do
    from(task in Todo.Schema, where: task.done == "complete") |> Todo.Repo.delete_all
  end
  def count_all() do
    query = from(task in Todo.Schema, select: count(task.id))
    Todo.Repo.one(query)

  end
  def count_active() do
    query = from(task in Todo.Schema, where: task.done == "incomplete", select: count(task.id))
    Todo.Repo.one(query)

  end
  def count_completed() do
    query = from(task in Todo.Schema,where: task.done == "complete", select: count(task.id))
    Todo.Repo.one(query)

  end
end
