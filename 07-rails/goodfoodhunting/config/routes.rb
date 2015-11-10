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

  # shortcut to generate multiple routes for cruding a resources
  resources :dishes
  resources :dish_types

end
