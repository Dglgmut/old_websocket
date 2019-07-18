class KeyValueChannel < ApplicationCable::Channel
  def subscribed
    puts "A new connection was stablished"
    stream_from "general_channel"
  end

  def receive(data)
    puts "New data have been received: #{data}"

    response_value = {value: Key.return_value_for_key(data["key"])}
    ActionCable.server.broadcast("general_channel", response_value)
  end
end
