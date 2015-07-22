class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :cat_id
      t.integer :user_id
      t.integer :spot_id

      t.timestamps null: false
    end
  end
end
