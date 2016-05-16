Rails.application.routes.draw do
  get '/example', to: 'examples#show'
  mount ActionCable.server => "/cable"
end
