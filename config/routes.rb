Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"homes#top"
  resources :post_images, only:[:new,:create,:index,:show,:destroy] do
    # 詳細ページ等必要ないのでid不要。resource単数形にしている
    resource :favorites,only:[:create,:destroy]
    resources :post_comments,only:[:create,:destroy]
  end

  resources :users,only:[:show,:edit]

end
