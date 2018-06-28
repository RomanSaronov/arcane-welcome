Rails.application.routes.draw do
  root to: 'stock#index'
  get '/add', to: 'stock#add'
end
