Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to:"homes#top"
  get '/homes/about' => 'homes#about' , as:'about'

  resources :post_images, only: [:new,:create,:index,:show,:destroy]
  #get 'postimages/new'
  #get 'postimages/index'
  #get 'postimages/show'
  #get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
