class AddAreaToTour < ActiveRecord::Migration[7.0]
  def change
    add_column :tours, :area, :integer
  end
end
