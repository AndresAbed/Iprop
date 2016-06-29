class RenamesTagNameForTags < ActiveRecord::Migration
  def change
    rename_column :tags, :tag_name, :name
  end
end
