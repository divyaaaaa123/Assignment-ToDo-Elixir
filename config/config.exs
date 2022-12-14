import Config

config :todo, Todo.Repo,
  database: "todo_repo",
  username: "postgres",
  password: "divya@skm12",
  hostname: "localhost"
config :todo,
  ecto_repos: [Todo.Repo]

# import_config "#{config_env()}.exs"
