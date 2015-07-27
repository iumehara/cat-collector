class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.string :price_type
      t.integer :price_value
      t.string :size
      t.integer :dish_id
      t.integer :amount
      t.string :image_empty_name
      t.string :image_full_name

      t.timestamps null: false
    end
  end
end
