Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :movies
  # get 'home/index'

  root 'movies#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
