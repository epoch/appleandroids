require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg' # to connect to postgres

get '/' do
  db = PG.connect(dbname: 'goodfoodhunting')
  rows = db.exec('select * from dishes;')


  @dish_name = rows[0]['name']
  @dish_image_url = rows[0]['image_url']
  erb :index
end

# single dish show path
get '/dishes/:id' do

end