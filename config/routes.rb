Rails.application.routes.draw do
  get '/admin', to: 'users#index'
  devise_for :users
  #resources :users
  #resources :guests
  root 'guests#index'
end
