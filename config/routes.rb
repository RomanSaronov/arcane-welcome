Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  root to: 'stocks#index'
  get '/stocks', to: 'stocks#index'

  resources :stocks
end
