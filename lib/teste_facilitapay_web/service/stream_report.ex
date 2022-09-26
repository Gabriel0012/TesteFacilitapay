defmodule TesteFacilitapayWeb.StreamReport do
  use TesteFacilitapayWeb, :service
  alias TesteFacilitapayWeb.Queries.ReportQuery

  def csv(%{
        "report_name" => report_name,
        "start_date" => start_date,
        "end_date" => end_date
      }) do
    {:ok, s_date} = Date.from_iso8601(start_date)
    {:ok, e_date} = Date.from_iso8601(end_date)

    get_report(report_name, s_date, e_date)
    # |> CSV.encode
  end

  defp get_report("DailyRegistrations", start_date, end_date) do
    ReportQuery.getReport(start_date, end_date)
    |> Repo.all()
  end

  defp get_report("DailyRegistrationsByPartner", start_date, end_date) do
    ReportQuery.getReportByPartner(start_date, end_date)
    |> Repo.all()
  end
end
