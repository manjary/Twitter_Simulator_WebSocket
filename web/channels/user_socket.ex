defmodule App.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "room:Tweeter", App.RoomChannel

  ## Transports
  transport :websocket, Phoenix.Transports.WebSocket

  # Socket params are passed from the client and can
  # be used to verify and authenticate a user. After
  # verification, you can put default assigns into
  # the socket that will be set for all channels, ie
  #
  #     {:ok, assign(socket, :user_id, verified_user_id)}
 
  def connect(%{"user" => user}, socket) do
    {:ok, assign(socket, :user, user)}
  end

  def id(_socket), do: nil
end
