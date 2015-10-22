require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

# route
get '/posts/:name' do
  @post_name = "blog post - #{params[:name]}"
  erb :post
end

# route
get '/about' do
  erb :about
end

# route
get '/contact' do
  erb :contact
end

get '/form_processor' do
  params.inspect
end





