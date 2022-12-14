defmodule Glue.Connection do
  defstruct req_path: "",
    res_header: [{"content-type","text/html"}],
    resp_body: "",
    status: 200
  def put_resp_body(conn,body) do
    %{conn | resp_body: body}
  end
  def put_status(conn,code) do
    %{conn | status: code}
  end
end
