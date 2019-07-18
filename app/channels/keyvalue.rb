class ChatChannel < ApplicationCable::Channel
  def subscribed
    puts "A new connection was stablished"
    stream_from "general_channel"
  end

  def receive(data)
    puts "A new connection was stablished"

    response_value = {value: Key.return_value_for_key(params[:key])}
    ActionCable.server.broadcast("general_channel", response_value)
  end
end
