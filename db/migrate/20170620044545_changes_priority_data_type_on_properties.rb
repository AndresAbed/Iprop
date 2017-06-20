class ChangesPriorityDataTypeOnProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :priority, :boolean
    add_column :properties, :priority, :integer
  end
end
