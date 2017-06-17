class AddApprovedToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :approved, :boolean
  end
end
