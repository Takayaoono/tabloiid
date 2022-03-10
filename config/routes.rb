Rails.application.routes.draw do
  get '/admin', to: 'users#index'
  devise_for :users
  #resources :users
  #resources :guests
  resources :tags
  resources :posts
  root 'guests#index'
end
