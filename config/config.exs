# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :yachat,
  ecto_repos: [Yachat.Repo]

# Configures the endpoint
config :yachat, YachatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CXwXdRgBwqp6d7ewpBDF8+Cmz3hvduxh0ZgJEsRTHWr6ztvuzSpxJB+xAXL76pvR",
  render_errors: [view: YachatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Yachat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :yachat, Yachat.UserManager.Guardian,
       issuer: "auth_me",
       secret_key: "sZSBQCe0pqHEOoE4rxowaWQxZ3EyfGovlDs4DxUHE+/HeuxndBtL5SMS1o7EEnQB"

config :pid_file, file: "./yachat.pid"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
