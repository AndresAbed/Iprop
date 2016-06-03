class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :address
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :size
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
