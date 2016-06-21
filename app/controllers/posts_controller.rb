class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @posts = Post.where('id != ?', "#{@post.id}")
  end
end
