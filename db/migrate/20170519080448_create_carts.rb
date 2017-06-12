class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
    	t.decimal :total_amount, precision: 8, scale: 2
      t.timestamps
    end
  end
end
