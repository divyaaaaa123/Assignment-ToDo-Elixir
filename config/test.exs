import Config

config :todo, Todo.Repo,
  username: "postgres",
  password: "divya@skm12",
  database: "todos_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
