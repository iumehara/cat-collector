class CreateYards < ActiveRecord::Migration
  def change
    create_table :yards do |t|
      t.string :name
      t.string :price_type
      t.integer :price_value

      t.timestamps null: false
    end
  end
end
