defmodule Streamer do
  @moduledoc """
  Documentation for `Streamer`.
  """

  @doc """
  Starts the streamer for the given symbol.
  """
  def start_streaming(symbol) do
    Streamer.Binance.start_link(symbol)
  end
end
