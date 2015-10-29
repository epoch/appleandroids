# maps class to the dishes table
class Dish < ActiveRecord::Base
  belongs_to :dish_type
end

