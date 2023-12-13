class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :tourist
      t.integer :spot_id
      t.integer :guests
      t.date :date

      t.timestamps
    end
  end
end
