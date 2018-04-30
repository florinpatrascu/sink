defmodule SinkWeb.SinkController do
  use SinkWeb, :controller

  # require Logger

  def create(conn, _params) do
    # Logger.info(inspect(params))

    conn
    |> put_status(:created)
    |> json(%{success: true})
  end
end
