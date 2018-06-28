Rails.application.routes.draw do
  devise_for :users
  root to: 'stock#index'
  get '/add', to: 'stock#add'
end
