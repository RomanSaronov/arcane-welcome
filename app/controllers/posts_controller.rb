class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
    if @posts.update(post_params)
      redirect_to root_path, alert: "Stock is created successfully!"
    else
      redirect_to root_path, alert: "Something goes wrong. Please try again!"
    end
  end

  private
  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end
end
