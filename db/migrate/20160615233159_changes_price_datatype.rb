class ChangesPriceDatatype < ActiveRecord::Migration
  def change
    change_column :properties, :price,  :integer
  end
end
