class Api::DishesController < ApplicationController

  def index
    @dishes = Dish.all
    render json: @dishes
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      render json: @dish
    else
      render json: { errors: 'something went wrong' }
    end
  end


  def destroy
    dish = Dish.find(params[:dish_id])

    if dish.destroy
      render json: dish
    else
      render json: { errors: 'destroy failed' }
    end

  end  

  def dish_params
    params.require(:dish).permit(:name, :image_url, :dish_type_id)
  end  

end
