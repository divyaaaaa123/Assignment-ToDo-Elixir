import Ecto.Changeset
import Ecto.Query
defmodule Todo do
  def add(task) do
    add_task = %Todo.Schema{task: task}
  Todo.Repo.insert(add_task)
  end

  def null() do
    query = from task in Todo.Schema ,
          select: task
    _data=Todo.Repo.all(query)
    #IO.inspect(data)
  end
  def list() do
      Todo.Repo.insert_all(Todo.Schema,[
        %{task: "Add New Task " },
        %{task: "Add New Task " },
        %{task: "Add New Task " },
        %{task: "Add New Task " }

      ])
  end
  def show_task() do
    if length(null()) ==0 do
      list()
    end
    query = from task in Todo.Schema ,
          select: task
    data=Todo.Repo.all(query)
    tasks = data|> Enum.map(&(&1.task))
    _reverse_tasks=Enum.take(tasks, -4)

  end
  def show_id() do
    if length(null()) == 0 do
      list()
    end
    query = from task in Todo.Schema ,
          select: task
    data=Todo.Repo.all(query)
    ids = data|> Enum.map(&(&1.id))
    _reverse_ids=Enum.take(ids, -4)
  end


  def delete_task(id) do
    _old_task = Todo.Schema |> Todo.Repo.get(id)
    |> Todo.Repo.delete()

  end
  def validation(task , params \\ %{}) do
    task
    |> Ecto.Changeset.cast(params , [:task])
    |> Ecto.Changeset.validate_required([:task])
  end

  def update_task(id,task) do

    prev_task= Todo.Schema|> Todo.Repo.get(id)
    prev_task
    |> validation(%{task: task})
    |> Todo.Repo.update()

  end

end
