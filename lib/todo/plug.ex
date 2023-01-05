import Todo
defmodule Todo.Plug do
  import Plug.Conn
  use Plug.Router
  require EEx
  plug :match
  plug :dispatch
  get "/" do
    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)
  end
  get "/add" do
    conn = Plug.Conn.fetch_query_params(conn)
 		task = Map.fetch!(conn.params, "data")
    add(task)
    IO.puts("#{task}")
    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)

  end
  get "/delete" do
    conn = Plug.Conn.fetch_query_params(conn)
 		id = Map.fetch!(conn.params, "delete_data")

      delete_task(id)

    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)

  end
  get "/delete_completed" do
    conn = Plug.Conn.fetch_query_params(conn)
      delete_completed()

    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)

  end
  get "/active" do
    conn = Plug.Conn.fetch_query_params(conn)
 		_task = Map.fetch!(conn.params, "active")
    active()
    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)

  end
  get "/completed" do
    conn = Plug.Conn.fetch_query_params(conn)
 		_task = Map.fetch!(conn.params, "completed")
    completed()
    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)

  end
  get "/toggle" do
    conn = Plug.Conn.fetch_query_params(conn)
 		id = Map.fetch!(conn.params, "id")
    status = Map.fetch!(conn.params, "status")
    toggle_status(id,status)
    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)
  end
  get "/p" do
    conn = Plug.Conn.fetch_query_params(conn)
 		id = Map.fetch!(conn.params, "id")
    p = Map.fetch!(conn.params, "p")
    priority1(id,p)
    body=EEx.eval_file "lib/todo/main.html.leex"
    send_resp(conn, 200, body)
  end

  get "/edit" do
		conn = Plug.Conn.fetch_query_params(conn)
		id = (Map.fetch!(conn.params, "id"))
		task = to_string(Map.fetch!(conn.params, "updatedtask"))
		body=EEx.eval_file("lib/todo/update.html.leex", [id: id , updatedtask: task])
    send_resp(conn, 200, body)
	end

	get "/store" do
		conn = Plug.Conn.fetch_query_params(conn)
		id = (Map.fetch!(conn.params, "id"))
		task = to_string(Map.fetch!(conn.params, "updatedtask"))

    update(id , task)
		body=EEx.eval_file("lib/todo/main.html.leex")
    send_resp(conn, 200, body)
	end
  match _ do
    send_resp(conn, 404, "404 Error Not found")
  end
end
