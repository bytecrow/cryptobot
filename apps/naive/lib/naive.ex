defmodule Naive do
  @moduledoc """
  Documentation for `Naive`.
  """

  alias Streamer.Binance.TradeEvent

  @doc """
  """
  def send_event(%TradeEvent{} = event) do
    GenServer.cast(:trader, event)
  end
end
