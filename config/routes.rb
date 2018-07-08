Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root 'stock#index'
  post '/stock/new', to: 'stock#create'

  resources :stock
end
