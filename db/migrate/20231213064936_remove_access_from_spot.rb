class RemoveAccessFromSpot < ActiveRecord::Migration[7.0]
  def change
    remove_column :spots, :access, :string
  end
end
