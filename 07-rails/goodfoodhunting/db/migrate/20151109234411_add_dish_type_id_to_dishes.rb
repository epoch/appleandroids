class AddDishTypeIdToDishes < ActiveRecord::Migration
  def change
    add_reference :dishes, :dish_type, index: true
    add_foreign_key :dishes, :dish_types
  end
end
