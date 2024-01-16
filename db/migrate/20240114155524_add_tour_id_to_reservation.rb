class AddTourIdToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :tour_id, :integer
  end
end
