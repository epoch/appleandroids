class AddLatitudeAndLongitudeToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :latitude, :float
    add_column :dishes, :longitude, :float
  end
end
