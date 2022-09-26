defmodule TesteFacilitapay.Repo.Migrations.AddPartnerTable do
  use Ecto.Migration

  def change do
    create table(:partner) do
      add :name, :string
    end
    
    create unique_index(:partner, [:id])
  end
end
