class ChangesPriceDatatypeFroProperties < ActiveRecord::Migration
  def change
    change_column :properties, :price,  :float
  end
end
