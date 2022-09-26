defmodule TesteFacilitapay.Repo.Migrations.AddRegistrationTable do
  use Ecto.Migration

  def change do

    create table(:registration) do
      add :partner_id, :integer
      add :cpf, :string
      add :email, :string
      add :inserted_at, :date
    end

    create unique_index(:registration, [:id])
  end
end
