class AddDetailToSpot < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :detail, :string
  end
end
