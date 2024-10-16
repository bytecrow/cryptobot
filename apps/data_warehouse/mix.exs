defmodule DataWarehouse.MixProject do
  use Mix.Project

  def project do
    [
      app: :data_warehouse,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {DataWarehouse.Application, []}
    ]
  end

  defp deps do
    [
      {:binance, "~> 1.0"},
      {:core, in_umbrella: true},
      {:ecto_sql, "~> 3.0"},
      {:ecto_enum, "~> 1.4"},
      {:phoenix_pubsub, "~> 2.0"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
