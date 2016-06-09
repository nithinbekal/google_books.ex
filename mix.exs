defmodule GoogleBooks.Mixfile do
  use Mix.Project

  def project do
    [app: :google_books,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.8.0"},
      {:poison, "~> 2.0"},
    ]
  end
end
