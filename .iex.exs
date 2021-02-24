good_job = fn ->
  Process.sleep(1000)
  {:ok, []}
end

bad_job = fn ->
  Process.sleep(3000)
  :error
end

doomed_job = fn ->
  Process.sleep(4000)
  raise "Doomed!"
end
