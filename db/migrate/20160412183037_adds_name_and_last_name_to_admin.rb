class AddsNameAndLastNameToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :last_name, :string
  end
end
