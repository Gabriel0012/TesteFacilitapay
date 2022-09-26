defmodule TesteFacilitapayWeb.Models.Partner do
	use Ecto.Schema

	alias TesteFacilitapayWeb.Models.Registration

	@derive {Jason.Encoder, only: [:id, :name, :registrations]}
	schema "partner" do
		field :name, :string

    has_many :registrations, Registration
	end
end
