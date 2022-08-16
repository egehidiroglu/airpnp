class RenameStatusToAvailabilityInBathrooms < ActiveRecord::Migration[7.0]
  def change
    rename_column :bathrooms, :status, :availability
  end
end
