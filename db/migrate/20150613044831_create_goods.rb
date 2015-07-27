class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.string :description
      t.string :price_type
      t.integer :price_value
      t.string :size
      t.integer :spot_id
      t.string :image_name

      t.timestamps null: false
    end
  end
end
