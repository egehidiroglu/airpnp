class CreateBathrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :bathrooms do |t|
      t.string :price
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
