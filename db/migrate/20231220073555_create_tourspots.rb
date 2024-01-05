class CreateTourspots < ActiveRecord::Migration[7.0]
  def change
    create_table :tourspots do |t|
      t.integer :tour_id
      t.integer :spot_id

      t.timestamps
    end
  end
end
