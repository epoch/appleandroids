# maps class to the dish_types table
class DishType < ActiveRecord::Base
  has_many :dishes
end