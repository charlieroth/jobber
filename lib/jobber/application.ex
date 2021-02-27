defmodule Jobber.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {
        Registry,
        keys: :unique, name: Jobber.JobRegistry
      },
      {
        DynamicSupervisor,
        strategy: :one_for_one, max_seconds: 30_000, name: Jobber.JobRunner
      }
    ]

    Supervisor.start_link(
      children,
      strategy: :one_for_one,
      name: Jobber.Supervisor
    )
  end
end
