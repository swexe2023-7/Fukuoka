class CreateTourists < ActiveRecord::Migration[7.0]
  def change
    create_table :tourists do |t|
      t.string :uid
      t.string :pass
      t.integer :visit_count
      t.integer :reservation_id

      t.timestamps
    end
  end
end
