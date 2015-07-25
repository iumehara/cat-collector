class AddAttachmentImageToGoods < ActiveRecord::Migration
  def self.up
    change_table :goods do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :goods, :image
  end
end
