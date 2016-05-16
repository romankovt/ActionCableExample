App.room = App.cable.subscriptions.create "ExampleChannel",
  connected: ->
    console.log("Connected")
    @say_hello()

  received: (data) ->
    console.log(data)

  disconnected: ->
    # Called when the subscription has been terminated by the server

  say_hello: ->
    @perform("say_hello")


