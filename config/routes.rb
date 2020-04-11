Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'

  resources :users

  root 'users#index'
end
