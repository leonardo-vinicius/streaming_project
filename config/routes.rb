Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'videos/index'
  get 'videos/show'
  get 'videos/new'
  get 'videos/create'
  get 'videos/edit'
  get 'videos/update'
  get 'videos/destroy'
  get 'videos/index'
 
  resources :notifications
  resources :users
   post 'authenticate', to: 'authentication#authenticate'
   #get 'users', to: 'users#index'

end