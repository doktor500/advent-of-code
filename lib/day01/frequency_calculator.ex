defmodule FrequencyCalculator do
  def calculate(values) do
    values
    |> Enum.map(&to_number(&1))
    |> Enum.sum
  end

  defp to_number("+" <> value) do
    String.to_integer(value)
  end

  defp to_number("-" <> value) do
    String.to_integer(value) * - 1
  end
end
