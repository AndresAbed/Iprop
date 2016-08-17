class ChangesThePriceDataTypeForProperties < ActiveRecord::Migration
  def change
    change_column :properties, :price, :string
  end
end
