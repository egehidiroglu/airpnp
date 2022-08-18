class ChangeBathroomLocationToAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :bathrooms, :location, :address
  end
end
