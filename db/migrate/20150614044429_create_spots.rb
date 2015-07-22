class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :position_id
      t.integer :yard_id

      t.timestamps null: false
    end
  end
end
