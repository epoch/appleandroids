class Dish < ActiveRecord::Base
  belongs_to :dish_type

  validates :name, presence: true
  validates :image_url, length: { minimum: 5 } 
end
