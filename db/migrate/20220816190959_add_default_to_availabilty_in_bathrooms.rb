class AddDefaultToAvailabiltyInBathrooms < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bathrooms, :availability, true
  end
end
