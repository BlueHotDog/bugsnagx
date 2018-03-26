defmodule Borscht.Reporter.Console do
  @moduledoc false
  use Borscht.Reporter

  def start_link(default) do
    GenServer.start_link(__MODULE__, default)
  end

  def report(%Borscht.Notice{} = notice) do
    Apex.ap({"notice", notice})
    {:ok, notice}
  end

  def init(args) do
    {:ok, args}
  end
end
