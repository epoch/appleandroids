Rails.application.routes.draw do
  # get request to '/' code is in pages controller home method / action
  root 'pages#home'
  # get '/' => 'pages#home'
  get '/about' => 'pages#about', as: :about

  # showing the login form
  get '/login' => 'session#new'
  # creating the session
  post '/login' => 'session#create'
  # deleting the session
  delete '/logout' => 'session#destroy'

  # you should not use a get for operations that have side effect
  get '/like_dish' => 'pages#like_dish'

  # get '/api/dishes' => 'dishes#index'

  namespace :api do
    resources :dishes, only: [:index, :create, :destroy]
    resources :likes, only: [:create]
  end

  # shortcut to generate multiple routes for cruding a resources
  resources :dishes
  resources :dish_types

end
