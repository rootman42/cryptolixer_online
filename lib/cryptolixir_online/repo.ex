defmodule CryptolixirOnline.Repo do
  use Ecto.Repo,
    otp_app: :cryptolixir_online,
    adapter: Ecto.Adapters.Postgres
end
