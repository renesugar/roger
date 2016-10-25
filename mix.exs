defmodule Roger.Mixfile do
  use Mix.Project

  def project do
    [app: :roger,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:amqp, :gproc, :logger],
     mod: {Roger, []}]
  end

  # Dependencies
  defp deps do
    [
      {:amqp, "~> 0.1.5"},
      {:amqp_client, github: "jbrisbin/amqp_client", tag: "rabbitmq-3.6.2", override: true},
      {:gproc, "~> 0.6.1"},
      {:poison, "~> 2.1"}
    ]
  end
end