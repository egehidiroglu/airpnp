class AddCoordinatesToBathrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :bathrooms, :latitude, :float
    add_column :bathrooms, :longitude, :float
  end
end
