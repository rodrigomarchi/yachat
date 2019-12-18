defmodule Yachat.Repo do
  use Ecto.Repo,
    otp_app: :yachat,
    adapter: Ecto.Adapters.Postgres
end
