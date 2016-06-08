class PropertiesTags < ActiveRecord::Migration
  def change
    create_table :properties_tags, id: false do |t|
      t.column :property_id, :integer
      t.column :tag_id, :integer
    end
  end
end
