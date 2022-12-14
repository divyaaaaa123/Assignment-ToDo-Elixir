
 import Ecto.Query

defmodule Todo do
  def add(task) do
    add_task = %Todo.Schema{task: task}
  Todo.Repo.insert(add_task)
  end
  def show_task() do
    query = from task in Todo.Schema ,
          select: task
    data=Todo.Repo.all(query)
    tasks = data|> Enum.map(&(&1.task))
    reverse_tasks=Enum.take(tasks, -4) |> IO.inspect(charlists: :as_lists)
    IO.inspect(reverse_tasks)
  end
  def show_id() do
    query = from task in Todo.Schema ,
          select: task
    data=Todo.Repo.all(query)
    ids = data|> Enum.map(&(&1.id))
    reverse_ids=Enum.take(ids, -4) |> IO.inspect(charlists: :as_lists)
    IO.inspect(reverse_ids)
  end


  def delete_task(id) do
    _old_task = Todo.Schema |> Todo.Repo.get(id)
    |> Todo.Repo.delete()

  end

  # def edit_task(id,task) do

  # end
  # def delete_task (id) do

  # end

end
