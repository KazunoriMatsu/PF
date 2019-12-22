class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    	t.integer :customer_id, null: false
    	t.string :title, null: false
    	t.text :body, null: false
    	t.integer :status, null: false, default: 0
    	t.integer :categorie_id, null: false
			t.datetime :deleted_at
      t.timestamps
    end
  end
end
