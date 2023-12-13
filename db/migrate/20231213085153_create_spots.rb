class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.binary :picture
      t.integer :area
      t.integer :age
      t.integer :number_of_people
      t.integer :purpose

      t.timestamps
    end
  end
end
