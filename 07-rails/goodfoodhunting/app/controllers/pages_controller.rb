class PagesController < ApplicationController


  def home
    @dishes = Dish.all
  end

  def about
  end

end