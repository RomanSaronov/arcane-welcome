class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to root_path
    end
  end

  def show
    @posts = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end

end
