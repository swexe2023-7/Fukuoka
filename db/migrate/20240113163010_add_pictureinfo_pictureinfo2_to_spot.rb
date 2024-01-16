class AddPictureinfoPictureinfo2ToSpot < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :pictureinfo2, :integer
  end
end
