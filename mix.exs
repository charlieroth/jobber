defmodule Jobber.MixProject do
  use Mix.Project

  def project do
    [
      app: :jobber,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :crypto],
      mod: {Jobber.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
       {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
    ]
  end
end
