defmodule AdventOfCodeTest do
  use ExUnit.Case

  test "calculates the final frequency" do
    assert FileReader.read_lines("resources/frequencies.txt")
    |> FrequencyCalculator.calculate_final == 531
  end

  test "calculates the first repeated frequency" do
    frequencies = ["-1", "1"]
    assert FrequencyCalculator.find_first_repeated_frequency(frequencies) == 0
  end

  test "calculates the first repeated frequency when there is a cycle" do
    frequencies = ["+3", "+3", "+4", "-2", "-4"]
    assert FrequencyCalculator.find_first_repeated_frequency(frequencies) == 10
  end
end
