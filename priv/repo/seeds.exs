alias TesteFacilitapay.Repo
alias TesteFacilitapayWeb.Models.{
  Partner,
  Registration
}

# ["Gabriel", "João", "Gustavo", "Denis"] |> Enum.map(fn p ->
#     Repo.insert! %Partner{
#       name: p
#     }
# end)

Repo.insert! %Registration {
  partner_id: 1,
  cpf: "666.666.666-66",
  email: "larissafitpaldi@gmail.com",
  inserted_at: ~D[2022-09-25]
}

Repo.insert! %Registration {
  partner_id: 1,
  cpf: "666.666.666-66",
  email: "larissafitpaldi@gmail.com",
  inserted_at: ~D[2022-07-25]
}

Repo.insert! %Registration {
  partner_id: 2,
  cpf: "666.666.666-66",
  email: "larissafitpaldi@gmail.com",
  inserted_at: ~D[2022-09-25]
}

Repo.insert! %Registration {
  partner_id: 3,
  cpf: "777.777.777-77",
  email: "teste@gmail.com",
  inserted_at: ~D[2022-09-25]
}
