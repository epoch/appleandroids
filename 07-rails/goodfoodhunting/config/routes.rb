Rails.application.routes.draw do
  # get request to '/' code is in pages controller home method / action
  root 'pages#home'
  # get '/' => 'pages#home'
  get '/about' => 'pages#about', as: :about

  # shortcut to generate multiple routes for cruding a resources
  resources :dishes
  resources :dish_types

end
