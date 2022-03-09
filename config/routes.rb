Rails.application.routes.draw do
  #get 'guests/index'
  #get 'users/index'
  get '/admin', to: 'users#index'
  devise_for :users
  #resources :users
  #resources :guests
  root 'guests#index'
end
