class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :guest, index: true
      t.references :rented_lodgment, index: true
      t.date :start_date
      t.integer :duration
      t.timestamps
    end
  end
end
