defmodule FrequencyCalculator do
  def calculate_final(frequencies) do
    frequencies
    |> Stream.map(&String.to_integer/1)
    |> Enum.sum
  end

  def find_first_repeated_frequency(frequencies) do
    %FrequencyMetadata{ all: frequencies, remaining: frequencies }
    |> calculate_first_repeated_frequency
  end

  defp calculate_first_repeated_frequency(frequency_metadata = %{ found: true }) do
    hd(frequency_metadata.seen)
  end

  defp calculate_first_repeated_frequency(frequency_metadata = %{ remaining: [head | tail] }) do
    current_frequency = String.to_integer(head) + hd(frequency_metadata.seen)

    frequency_metadata
    |> Map.put(:seen, [current_frequency | frequency_metadata.seen])
    |> Map.put(:remaining, tail)
    |> Map.put(:found, Enum.member?(frequency_metadata.seen, current_frequency))
    |> calculate_first_repeated_frequency
  end

  defp calculate_first_repeated_frequency(frequency_metadata = %{ remaining: [] }) do
    frequency_metadata
    |> Map.put(:remaining, frequency_metadata.all)
    |> calculate_first_repeated_frequency
  end

end
