# app/channels/chat_channel.rb

class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def receive(data)
    # Handle received data, e.g., broadcast it to other subscribers
    ActionCable.server.broadcast('chat_channel', content: data['content'])
  end

  def unsubscribed
    # Any cleanup or additional actions when a subscriber unsubscribes
  end
end


