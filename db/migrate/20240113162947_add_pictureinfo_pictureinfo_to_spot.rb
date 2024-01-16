class AddPictureinfoPictureinfoToSpot < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :pictureinfo, :integer
  end
end
