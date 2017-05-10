Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end

  # root  'tweets#index'
  # get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
  # get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  # post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
  # get 'users/:id'     =>  'users#show'    #ツイートの詳細
  # delete 'tweets/:id'  =>  'tweets#destroy'   #ツイートの削除機能
  # patch 'tweets/:id'   =>  'tweets#update'    #ツイートの更新機能
  # get  'tweets/:id/edit' => 'tweets#edit'    #ツイートの編集機能
  # get   'tweets/:id'    =>  'tweets#show'       #Mypageへのルーティング