Rails.application.routes.draw do
  get '/admin', to: 'users#index'
  devise_for :users
  #resources :users
  #resources :guests
  resources :tags
  resources :posts #Postのソート機能の時に別のアクションを呼び出してしまうのでpost_controllerのルーティングを自分で設定

  get 'tags/search/:id' => 'tags#search' #タグ絞り込み検索用ルーティング
  get 'tags_reset' => 'tags#reset' #タグ絞り込みの「全て表示」用ルーティング
  get 'tag_edit/:post_id' => 'tags#edit' #1つのpostに対してのタグの追加・削除を行うモーダル用ルーティング
  delete 'tag_edit/:post_id/:tag_id' => 'tags#destroy_2' #1つのpostに対してのタグの削除を行うルーティング
  post 'tag_edit/:post_id/:tag_id' => 'tags#create_2' #1つのpostに対してのタグの追加を行うルーティング

  root 'guests#index'
end
