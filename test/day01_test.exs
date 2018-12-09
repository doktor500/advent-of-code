defmodule AdventOfCodeTest do
  use ExUnit.Case

  test "calculates the final frequency" do
    assert FileReader.read_lines("resources/frequencies.txt") |> FrequencyCalculator.calculate == 531
  end
end
