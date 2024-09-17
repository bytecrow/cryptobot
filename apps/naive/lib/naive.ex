defmodule Naive do
  @moduledoc """
  Documentation for `Naive`.
  """

  @doc """
  Starts trading for a given symbol.
  """
  def start_trading(symbol) do
    symbol = String.upcase(symbol)

    {:ok, _pid} =
      DynamicSupervisor.start_child(
        Naive.DynamicSymbolSupervisor,
        {Naive.SymbolSupervisor, symbol}
      )
  end
end
