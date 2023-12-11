class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :picture
      t.integer :address
      t.string :access

      t.timestamps
    end
  end
end
