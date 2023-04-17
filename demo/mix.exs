defmodule Demo.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # 定义发布配置
      releases: [
          # 每个配置是一个发布配置，配合makefile里的名字一起发布
          demo: [
              applications: [
                # gwc_server: :permanent,
                # game_server: :permanent,
                # cowboy: :permanent,
                # cowlib: :permanent,
                # esnowflake: :permanent,
                # glib: :permanent,
                # # jsx: :permanent,
                # ranch: :permanent,
                # # recon: :permanent,
                # sys_log: :permanent,
                # zucchini: :permanent,
                # ex_log: :permanent,
                # jsx: :permanent,
                # use_glib: :permanent,
                # redisc: :permanent,
                # gwc: :permanent,
                # elink: :permanent,
                use_bigquery: :permanent,
                mix_new_myapp: :permanent,
              ]
          ]
      ]
      # 定义发布配置

    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end
end
