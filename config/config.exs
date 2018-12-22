# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :generated_files,
  ecto_repos: [GeneratedFiles.Repo]

# Configures the endpoint
config :generated_files, GeneratedFilesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IIFHXoCaNT0pkw78GCTHKhkIfbzbDth/LxU4iqaPAMvvBAlF6Z/2BvDa+SeRfaEr",
  render_errors: [view: GeneratedFilesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GeneratedFiles.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
