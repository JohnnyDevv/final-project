class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
			t.string :title
    	t.text :body
    	t.string :picture
    	t.string :video
      t.timestamps
    end
  end
end
