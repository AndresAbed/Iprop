class RenamesStateColumnForProperties < ActiveRecord::Migration
  def change
    rename_column :properties, :state, :operation
    add_column :properties, :state, :string
  end
end
