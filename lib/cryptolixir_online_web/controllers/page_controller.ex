defmodule CryptolixirOnlineWeb.PageController do
  use CryptolixirOnlineWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
