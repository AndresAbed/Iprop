class PostsController < ApplicationController
  def show
    @post = Post.friendly.find(params[:id])
    @posts = Post.where('id != ?', "#{@post.id}")
  end
end
