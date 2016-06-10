defmodule GoogleBooks.Mixfile do
  use Mix.Project

  def project do
    [app: :google_books,
     version: "0.0.2",
     elixir: "~> 1.2",
     description: "A simple wrapper for Google Books API",
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:httpoison, :poison]]
  end

  defp deps do
    [
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:httpoison, "~> 0.8.0"},
      {:poison, ">= 1.0.0"},
    ]
  end

  def package do
    [ name: :google_books,
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Nithin Bekal"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/nithinbekal/google_books.ex"},
    ]
  end
end
