class AddPropertyIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :property_id, :integer
  end
end
