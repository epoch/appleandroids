require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg' # to connect to postgres

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/dish_type'
require_relative 'models/user'

enable :sessions

helpers do
  def link(label, href)
    "<a href='#{ href }'>#{ label }</a>"
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @dish_types = DishType.all

  if params[:dish_type_id].nil? || params[:dish_type_id].empty?
    @dishes = Dish.all
  else  
    @dishes = Dish.where(dish_type_id: params[:dish_type_id])
  end

  erb :'/dishes/index'
end

# getting the form
get '/dishes/new' do
  redirect to '/login' unless logged_in?

  erb :'/dishes/new'
end

# single dish show path
get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  erb :'/dishes/show'
end

# create a new dish
post '/dishes' do
  @dish = Dish.new
  @dish.name = params[:name]
  @dish.image_url = params[:image_url]
  @dish.save
  redirect to '/'
end

# get edit form for an existing dish
get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  @dish_types = DishType.all
  erb :'/dishes/edit'
end

# update existing dish with specified id
put '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @dish.name = params[:name]
  @dish.image_url = params[:image_url]
  @dish.dish_type_id = params[:dish_type_id]
  @dish.save

  redirect to "/dishes/#{params[:id]}"
end

delete '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @dish.destroy
  redirect to "/"  
end

# list all dish_types
get '/dish_types' do
  redirect to '/login' unless logged_in?

  @dish_types = DishType.all
  erb :'/dish_types/index'
end

get '/dish_types/:id' do
  @dish_type = DishType.find params[:id]
  erb :'/dish_types/show'
end

# show dish type edit form
get '/dish_types/:id/edit' do
  @dish_type = DishType.find params[:id]
  erb :'/dish_types/edit'
end

# update existing dish type
put '/dish_types/:id' do
  @dish_type = DishType.find params[:id]
  @dish_type.name = params[:name]
  @dish_type.save
  redirect to '/dish_types'
end

#----------------------------
# authentication
#----------------------------

# show login form
get '/login' do
  erb :login
end

# creating a session
post '/session' do
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    # yay
    session[:user_id] = user.id
    # redirect user
    redirect to '/'
  else
    # nay
    # redirect user
    redirect to '/login'
  end

end

delete '/session' do
  session[:user_id] = nil
  redirect to '/login'
end

