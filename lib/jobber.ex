defmodule Jobber do
  def start_job(args) do
    DynamicSupervisor.start_child(Jobber.JobRunner, {Jobber.Job, args})
  end
end
