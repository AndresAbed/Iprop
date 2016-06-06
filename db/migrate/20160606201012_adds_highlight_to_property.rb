class AddsHighlightToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :highlight, :boolean
  end
end
