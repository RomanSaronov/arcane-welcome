class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
    if @posts.save!
      redirect_to root_path,
      flash[:success] = "Stock is created successfully!"
    else
      redirect_to root_path,
      flash[:error] = "Something goes wrong. Please try again!"
    end
  end

  private
  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end
end
