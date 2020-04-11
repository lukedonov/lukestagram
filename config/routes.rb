Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/edit'
  get 'posts/new'
  get 'users/new'
  get 'users/index'

  resources :users
  resources :posts
end
