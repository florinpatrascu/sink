defmodule SinkWeb.Router do
  use SinkWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", SinkWeb do
    pipe_through(:api)

    post("/", SinkController, :create)
  end
end
