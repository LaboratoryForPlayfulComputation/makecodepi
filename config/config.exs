# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :makecodepi,
  ecto_repos: [Makecodepi.Repo]

# Configures the endpoint
config :makecodepi, MakecodepiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JREHl5PuM/ZA5Nt0FaSt8vCYg9uyjU0imGcqhczyUBYJl8F9hDsmKOhBFbQ93dvS",
  render_errors: [view: MakecodepiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Makecodepi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
