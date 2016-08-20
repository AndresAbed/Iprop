class ChangesPropertiesPriceDatatype < ActiveRecord::Migration
  def change
    remove_column :properties, :price
    add_column :properties, :price, :integer
  end
end
