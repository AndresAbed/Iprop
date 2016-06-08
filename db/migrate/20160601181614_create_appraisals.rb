class CreateAppraisals < ActiveRecord::Migration
  def change
    create_table :appraisals do |t|
      t.string :neighborhood
      t.integer :min_price
      t.integer :max_price

      t.timestamps null: false
    end
  end
end
