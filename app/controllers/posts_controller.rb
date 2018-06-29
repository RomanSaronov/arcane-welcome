class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
  end
  private
  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end
end
