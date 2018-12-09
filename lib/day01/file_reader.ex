defmodule FileReader do
  def read_lines(file_name) do
    file_name
    |> File.stream!
    |> Stream.map(&String.trim/1)
  end
end
