defmodule Erlex.MixProject do
  use Mix.Project

  def project do
    [
      app: :erlex,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Convert Erlang style structs and error messages to equivalent Elixir.
    """
  end

  defp package do
    [
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE",
        "src/lexer.xrl",
        "src/parser.yrl"
      ],
      maintainers: ["Andrew Summers"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/asummers/erlex"}
    ]
  end
end
