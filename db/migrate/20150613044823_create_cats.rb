class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :description
      t.string :personality
      t.integer :strength
      t.string :image_name

      t.timestamps null: false
    end
  end
end
