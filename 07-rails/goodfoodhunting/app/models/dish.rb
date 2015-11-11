class Dish < ActiveRecord::Base
  belongs_to :dish_type
  has_many :likes
  
  validates :name, presence: true
  validates :image_url, length: { minimum: 5 } 
end
