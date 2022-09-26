defmodule TesteFacilitapay.Repo do
  use Ecto.Repo,
    otp_app: :teste_facilitapay,
    adapter: Ecto.Adapters.MyXQL
end
