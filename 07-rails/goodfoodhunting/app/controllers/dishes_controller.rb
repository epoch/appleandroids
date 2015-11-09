class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id]) # retrieve existing record from db
    @dish.update(dish_params) # get params through the white listed method
    redirect_to '/dishes' # redirect to a safe route
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.save
    redirect_to '/dishes'
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to '/dishes'
  end

  def dish_params
    params.require(:dish).permit(:name, :image_url)
  end

end