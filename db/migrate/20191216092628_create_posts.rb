class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.string :title, null: false
    	t.text :body, null: false
    	t.integer :image_id, null: false
    	t.integer :categorie_id, null: false
    	t.integer :favorite_count, default: 0, null: false
    	t.integer :customer_id, null: false

      t.timestamps
    end
  end
end
