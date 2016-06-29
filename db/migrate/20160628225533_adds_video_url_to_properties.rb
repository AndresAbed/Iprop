class AddsVideoUrlToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :video, :string
  end
end
