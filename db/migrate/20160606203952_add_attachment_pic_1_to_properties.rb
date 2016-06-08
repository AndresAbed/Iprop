class AddAttachmentPic1ToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :pic_1
      t.attachment :pic_2
      t.attachment :pic_3
      t.attachment :pic_4
      t.attachment :pic_5
      t.attachment :pic_6
      t.attachment :pic_7
      t.attachment :pic_8
    end
  end
end
