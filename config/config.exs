# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cryptolixir_online,
  ecto_repos: [CryptolixirOnline.Repo]

# Configures the endpoint
config :cryptolixir_online, CryptolixirOnlineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Zsq+mjqTLc3+6EBJd9YkmNCVkkw82ngJ4gnVEyjFtS8yVw4GJvk4FpoflHqrgce3",
  render_errors: [view: CryptolixirOnlineWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CryptolixirOnline.PubSub,
  live_view: [signing_salt: "CZ3H2oLr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
