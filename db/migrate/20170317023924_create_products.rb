class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title		
      t.string :description
      t.references :category, foreign_key: true
      t.string :picture
      t.string :video
      t.timestamps
    end
  end
end
