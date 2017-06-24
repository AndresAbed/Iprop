class SetDefaultValueForPriorityOnProperties < ActiveRecord::Migration
  def change
    change_column :properties, :priority, :integer, default: 0
  end
end
