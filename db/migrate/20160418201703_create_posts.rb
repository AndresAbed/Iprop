class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :video_url

      t.timestamps null: false
    end
  end
end
