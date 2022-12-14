defmodule Todo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger
  @impl true
  def start(_type, _args) do
    children = [
      Todo.Repo,
      {Plug.Cowboy, scheme: :http, plug: Todo.Plug, options: [port: 4001]},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Todo.Supervisor]
    Logger.info("Starting your application....")
    Supervisor.start_link(children, opts)
  end
end
