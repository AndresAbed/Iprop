class AddAttachmentFlatToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :flat
    end
  end

  def self.down
    remove_attachment :properties, :flat
  end
end
