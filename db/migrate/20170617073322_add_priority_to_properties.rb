class AddPriorityToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :priority, :boolean
  end
end
