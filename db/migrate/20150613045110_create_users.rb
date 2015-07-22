class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :silver
      t.integer :gold

      t.timestamps null: false
    end
  end
end
