Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :mypage, only: [:show]

get 'maps/index'
resources :maps, only: [:index]

get 'hello/index' => 'hello#index'
root 'hello#index'

resources :posts, only: [:index, :new, :create]
get 'posts/index' =>'posts#index'
get 'posts/new' =>'posts#new'
get 'posts/:id' => 'posts#show',as: 'post'
post 'posts' =>'posts#create'

get 'mypage' =>'mypage#show'

end
