class RemoveVideoUrlFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :video_url
  end
end
