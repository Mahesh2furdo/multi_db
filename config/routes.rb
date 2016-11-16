Rails.application.routes.draw do
  resources :actors
  resources :movies
  resources :blogs
  resources :users
  resources :posts
  resources :furdos
  resources :samples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
