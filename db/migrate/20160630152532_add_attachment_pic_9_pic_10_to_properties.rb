class AddAttachmentPic9Pic10ToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :pic_9
      t.attachment :pic_10
    end
  end

  def self.down
    remove_attachment :properties, :pic_9
    remove_attachment :properties, :pic_10
  end
end
