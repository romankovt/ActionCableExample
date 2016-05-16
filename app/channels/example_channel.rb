class ExampleChannel < ApplicationCable::Channel
  def subscribed
    stream_from "example_channel"
  end

  def say_hello
    ActionCable.server.broadcast 'example_channel', message: "Hello!"
  end
end
