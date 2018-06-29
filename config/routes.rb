Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  root to: 'stock#index'
  get '/add', to: 'stock#add'
  resources :posts
end
