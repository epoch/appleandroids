require 'sinatra'
require 'sinatra/reloader'

get '/hello/:thing' do
  "<h1>hello #{ params[:thing] }</h1>"
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/yo/peeps' do
  "<h1>over here</h1>"
end

get '/multifly/:num1/:num2' do
  result = params[:num1].to_i * params[:num2].to_i
  "<h1>the result is #{ result }</h1>"
end



