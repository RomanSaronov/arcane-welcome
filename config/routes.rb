Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "signin", :sign_out => "signout", :sign_up => "register" }
  root to: 'stock#index'
  get '/add', to: 'stock#add'
end
