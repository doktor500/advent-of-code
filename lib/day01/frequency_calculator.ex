defmodule FrequencyCalculator do
  def calculate_final(frequencies) do
    frequencies
    |> Enum.map(&to_number(&1))
    |> Enum.sum
  end

  defp to_number("+" <> frequency), do: String.to_integer(frequency)
  defp to_number("-" <> frequency), do: String.to_integer(frequency) * - 1
end
