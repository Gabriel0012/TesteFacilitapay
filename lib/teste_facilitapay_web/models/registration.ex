defmodule TesteFacilitapayWeb.Models.Registration do
	use Ecto.Schema

	@derive {Jason.Encoder, only: [:id, :partner_id, :cpf, :email, :inserted_at]}
    schema "registration" do
        field :partner_id, :integer
        field :cpf, :string
        field :email, :string
        field :inserted_at, :date
	end
end
