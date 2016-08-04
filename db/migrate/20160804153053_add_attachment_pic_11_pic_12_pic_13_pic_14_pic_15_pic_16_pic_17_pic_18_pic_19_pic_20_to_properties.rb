class AddAttachmentPic11Pic12Pic13Pic14Pic15Pic16Pic17Pic18Pic19Pic20ToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :pic_11
      t.attachment :pic_12
      t.attachment :pic_13
      t.attachment :pic_14
      t.attachment :pic_15
      t.attachment :pic_16
      t.attachment :pic_17
      t.attachment :pic_18
      t.attachment :pic_19
      t.attachment :pic_20
    end
  end

  def self.down
    remove_attachment :properties, :pic_11
    remove_attachment :properties, :pic_12
    remove_attachment :properties, :pic_13
    remove_attachment :properties, :pic_14
    remove_attachment :properties, :pic_15
    remove_attachment :properties, :pic_16
    remove_attachment :properties, :pic_17
    remove_attachment :properties, :pic_18
    remove_attachment :properties, :pic_19
    remove_attachment :properties, :pic_20
  end
end
