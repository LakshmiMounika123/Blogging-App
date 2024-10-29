class PostsController < ApplicationController
  def index
    @posts = Post.where(published: true)
  end

  def show
    @post = Post.find(params[:id])
  end
end
