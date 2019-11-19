class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :ad
      t.string :status
      t.datetime :booking_start
      t.datetime :booking_end

      t.timestamps
    end
  end
end
