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

# getting the form
get '/dishes/new' do
  erb :new
end

# single dish show path
get '/dishes/:id' do
  @dishes = run_sql("select * from dishes where id = #{ params[:id] }") # [{}]
  @dish = @dishes[0] # {}

  erb :show
end

# create a new dish
post '/dishes' do
  sql = "insert into dishes (name, image_url) values ('#{ params[:name] }', '#{ params[:image_url] }');"
  run_sql(sql)

  redirect to '/'
end

# get edit form for an existing dish
get '/dishes/:id/edit' do
  @dishes = run_sql("select * from dishes where id = #{ params[:id] }")
  @dish = @dishes[0]
  erb :edit
end

# update existing dish with specified id
post '/dishes/:id' do
  run_sql("UPDATE dishes SET name='#{params[:name]}', image_url='#{params[:image_url]}' where id = #{params[:id]}")

  redirect to "/dishes/#{params[:id]}"
end

post '/dishes/:id/delete' do
  run_sql("DELETE FROM dishes where id = #{ params[:id] }")

  redirect to "/"  
end


def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  results
end


