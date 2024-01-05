class AddProjectTours < ActiveRecord::Migration[7.0]
  def change
    add_column :tours, :age, :integer
    add_column :tours, :number_of_people, :integer
  end
end
