Rails.application.routes.draw do
  get '/admin', to: 'users#index'
  devise_for :users
  #resources :users
  #resources :guests
  resources :tags
  #resources :posts #Postのソート機能の時に別のアクションを呼び出してしまうのでpost_controllerのルーティングを自分で設定
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'tags/search/:id' => 'tags#search' #タグ絞り込み検索用ルーティング
  get 'tags_reset' => 'tags#reset' #タグ絞り込みの「全て表示」用ルーティング
  root 'guests#index'
end
