defmodule ReportsGenerator do
  # ReportsGenerator.build("report_test.csv")

  def build(filename) do
    "reports/#{filename}"
    # pipe operator
    |> File.stream!()
    |> Enum.map(fn line -> parse_line(line) end)
  end

  # pattern matching e sobrecarga
  defp parse_line(line) do
    line
    |> String.trim()
    |> String.split(",")
    |> List.update_at(2, &String.to_integer/1)
  end
end
