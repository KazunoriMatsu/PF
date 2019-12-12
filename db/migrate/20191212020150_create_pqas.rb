class CreatePqas < ActiveRecord::Migration[5.2]
  def change
    create_table :pqas do |t|
    	t.integer :customer_id, null: false
    	t.integer :post_id, null: false
    	t.integer :qad_id, null: false

      t.timestamps
    end
  end
end
