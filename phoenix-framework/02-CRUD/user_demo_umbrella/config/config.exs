# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :user_demo,
  ecto_repos: [UserDemo.Repo]

config :user_demo_web,
  ecto_repos: [UserDemo.Repo],
  generators: [context_app: :user_demo]

# Configures the endpoint
config :user_demo_web, UserDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lWkYebdw7Fn52+GBEIUYv2EjMRh5GDtar4Ziz/YiNY+2heE4vucBcEl7Gmg0r5o+",
  render_errors: [view: UserDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: UserDemo.PubSub,
  live_view: [signing_salt: "DcgPKnC7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
