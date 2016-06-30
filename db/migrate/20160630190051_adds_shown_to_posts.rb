class AddsShownToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :shown, :boolean
  end
end
