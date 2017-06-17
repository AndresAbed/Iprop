class AddCommentToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :comment, :text
  end
end
