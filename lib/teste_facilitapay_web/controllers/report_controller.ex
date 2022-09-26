defmodule TesteFacilitapayWeb.ReportController do
  use TesteFacilitapayWeb, :controller

  alias TesteFacilitapayWeb.StreamReport

  def create(conn, params) do
    relatorio = StreamReport.csv(params)

    conn
      |> put_status(:ok)
      |> json(%{
        error: false,
        data: relatorio
      })
  end
end
