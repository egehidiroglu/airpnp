class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bathroom, null: false, foreign_key: true
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.integer :status

      t.timestamps
    end
  end
end
