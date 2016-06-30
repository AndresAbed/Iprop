class PostsController < ApplicationController
  def show
    @post = Post.friendly.find(params[:id])
    @posts = Post.where('id != ? and shown = true', "#{@post.id}").order("created_at desc")
  end
end
