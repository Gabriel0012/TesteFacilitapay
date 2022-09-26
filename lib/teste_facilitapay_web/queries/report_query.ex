defmodule TesteFacilitapayWeb.Queries.ReportQuery do
  import Ecto.Query

  alias TesteFacilitapayWeb.Models.Partner
  alias TesteFacilitapayWeb.Models.Registration

  def getReportByPartner(query \\ Partner, start_date, end_date) do
    from p in query,
      join: r in assoc(p, :registrations),
      where: r.inserted_at >= ^start_date,
      where: r.inserted_at <= ^end_date,
      preload: [registrations: r]
  end

  def getReport(query \\ Registration, start_date, end_date) do
    from p in query,
      where: p.inserted_at >= ^start_date,
      where: p.inserted_at <= ^end_date
  end
end