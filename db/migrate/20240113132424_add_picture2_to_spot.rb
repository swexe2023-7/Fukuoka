class AddPicture2ToSpot < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :picture2, :binary
  end
end
