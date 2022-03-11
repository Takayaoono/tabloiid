Rails.application.routes.draw do
  get '/admin', to: 'users#index'
  devise_for :users
  #resources :users
  #resources :guests
  resources :tags
  #resources :posts
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/sort'
  root 'guests#index'
end
