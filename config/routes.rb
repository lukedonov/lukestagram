Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'posts/index'
  get 'posts/edit'
  get 'posts/new'
  get 'users/new'
  get 'users/index'

  resources :users
  resources :posts

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'
end
