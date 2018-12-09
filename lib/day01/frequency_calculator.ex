defmodule FrequencyCalculator do
  def calculate_final(frequencies) do
    frequencies
    |> Stream.map(&String.to_integer/1)
    |> Enum.sum
  end
end
