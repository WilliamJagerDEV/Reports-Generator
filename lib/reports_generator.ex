defmodule ReportsGenerator do

  # ReportsGenerator.build("report_test.csv")
  def build(filename) do
    case File.read("reports/#{filename}") do
      {:ok, result} ->  result
      {:error, reason} -> reason
    end
  end
end
