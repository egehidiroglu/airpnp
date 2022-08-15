class AddStatusToBathrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :bathrooms, :status, :integer
  end
end
