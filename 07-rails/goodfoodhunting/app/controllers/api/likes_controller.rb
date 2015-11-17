class Api::LikesController < ApplicationController


  def create
    # need the user_id, dish_id
    # create a new likes record

    # current_user = User.find(session[:user_id])
    dish = Dish.find(params[:dish_id])

    like = Like.new
    like.user_id = params[:user_id]
    like.dish_id = dish.id

    if like.save
      render json: { starCount: dish.likes.count }
    else
      render json: { errors: 'saving failed' }
    end
  end

end