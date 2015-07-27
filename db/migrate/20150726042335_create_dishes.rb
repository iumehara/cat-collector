class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :position_id
      t.integer :yard_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
