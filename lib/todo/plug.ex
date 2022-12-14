import Todo
defmodule Todo.Plug do
  import Plug.Conn
  use Plug.Router
  require EEx
  plug :match
  plug :dispatch
  get "/" do
    body=EEx.eval_file "lib/todo/main.eex",[tsk: show_task(),ids: show_id()]
    send_resp(conn, 200, body)
  end
  get "/add" do
    conn = Plug.Conn.fetch_query_params(conn)
 		task = Map.fetch!(conn.params, "data")
    add(task)
    IO.puts("#{task}")
    body=EEx.eval_file "lib/todo/main.eex",[tsk: show_task(),ids: show_id()]
    send_resp(conn, 200, body)

  end
  get "/delete" do
    conn = Plug.Conn.fetch_query_params(conn)
 		id = Map.fetch!(conn.params, "delete_data")
    IO.puts("#{id}")
    delete_task(id)
    body=EEx.eval_file "lib/todo/main.eex",[tsk: show_task(),ids: show_id()]
    send_resp(conn, 200, body)

  end
  match _ do
    send_resp(conn, 404, "404 Error Not found")
  end
end
