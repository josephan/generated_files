use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :generated_files, GeneratedFilesWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :generated_files, GeneratedFiles.Repo,
  username: "postgres",
  password: "postgres",
  database: "generated_files_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
