class PagesController < ApplicationController


  def home
    @dishes = Dish.all
  end

  def about
  end

  def like_dish
    current_user = User.find(session[:user_id])
    dish = Dish.find(params[:dish_id])
    Like.create(dish_id: params[:dish_id] , user_id: current_user.id)
    render json: { starCount: dish.likes.count }
  end

end