class AddTouristIdToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :tourist_id, :integer
  end
end
