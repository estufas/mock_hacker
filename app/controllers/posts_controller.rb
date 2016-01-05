class PostsController < ApplicationController
  def index
  end

  def new
  	@posts = Post.new
  end

  def create
  	Post.create post_params
  end

  private

  def post_params
  	params.require(:post).permit(:link, :title)
  end
end
