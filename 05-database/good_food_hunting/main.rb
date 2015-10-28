require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg' # to connect to postgres

class Dish
  attr_accessor :id, :name, :image_url, :dish_type_id

  def initialize(id, name, image_url, dish_type_id)
    @id = id
    @name = name
    @image_url = image_url
    @dish_type_id = dish_type_id
  end
end

before do
  @dish_types = run_sql('select * from dish_types;')
end

get '/' do
  rows = run_sql('select * from dishes;')
  @dishes = []
  rows.each do |row|
    new_dish = Dish.new(row['id'], row['name'],row['image_url'],row['dish_type_id'])
    @dishes << new_dish
  end

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
put '/dishes/:id' do
  run_sql("UPDATE dishes SET name='#{params[:name]}', image_url='#{params[:image_url]}', dish_type_id=#{params[:dish_type_id]} where id = #{params[:id]}")

  redirect to "/dishes/#{params[:id]}"
end

delete '/dishes/:id' do
  run_sql("DELETE FROM dishes where id = #{ params[:id] }")

  redirect to "/"  
end

def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  results
end


