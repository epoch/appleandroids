class DishesController < ApplicationController

  def index
    @dishes = Dish.all

    # respond_to do |format|
    #   format.html { render :index }
    #   format.json { render json: @dishes }
    # end
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
    if @dish.save
      redirect_to '/dishes', notice: 'yay new dish created'
    else
      render :new
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to '/dishes'
  end

  def dish_params
    params.require(:dish).permit(:name, :image_url, :dish_type_id)
  end

end