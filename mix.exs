defmodule XGPS.Mixfile do
  use Mix.Project

  def project do
    [app: :xgps,
     name: XGPS,
     version: "0.1.0",
     elixir: "~> 1.3.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/rveshovda/xgps",
     deps: deps(),
     description: description(),
     package: package()]
  end

  def application do
    [applications: [:logger],
     mod: {XGPS, []}]
  end

  defp deps do
    [{:nerves_uart, "~> 0.0.7"}]
  end

  defp description do
    """
    A GPS library written in Elixir.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :xgps,
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Roy Veshovda"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/rveshovda/xgps"}]
  end
end