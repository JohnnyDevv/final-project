class AddCartRefAndPriceToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :price, :decimal, precision: 8, scale: 2
    add_reference :products, :cart, foreign_key: true
  end
end
