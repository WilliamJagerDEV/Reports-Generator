defmodule ReportsGenerator do
  # ReportsGenerator.build("report_test.csv")

  def build(filename) do
    "reports/#{filename}"
    # pipe operator
    |> File.read()
    |> handle_file()
  end

  # pattern matching e sobrecarga
  defp handle_file({:ok, file_content}), do: file_content
  defp handle_file({:error, _reason}), do: "Error while opening  file!"
end
