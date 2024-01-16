class AddAddressToSpotss < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :address, :string
  end
end
