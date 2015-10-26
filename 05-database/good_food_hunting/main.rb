require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg' # to connect to postgres

get '/' do
  db = PG.connect(dbname: 'goodfoodhunting')
  @dishes = db.exec('select * from dishes;')
  db.close

  erb :index
end

# single dish show path
get '/dishes/:id' do
  db = PG.connect(dbname: 'goodfoodhunting')
  @dishes = db.exec("select * from dishes where id = #{ params[:id] }") # [{}]
  db.close

  @dish = @dishes[0] # {}

  erb :show
end