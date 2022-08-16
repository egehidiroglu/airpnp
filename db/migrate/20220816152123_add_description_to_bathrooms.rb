class AddDescriptionToBathrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :bathrooms, :description, :text
  end
end
