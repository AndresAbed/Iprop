class AddsArsPriceToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :price_ars, :integer
  end
end
