defmodule Bucs.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bucs,
      version: "0.1.5",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [
       applications: [],
       env: [],
       mod: {:bucs_app, []}
    ]
  end

  defp deps do
    [    
    ]
  end
end