class RemovePictureFromSpot < ActiveRecord::Migration[7.0]
  def change
    remove_column :spots, :picture, :string
  end
end
