class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to root_path
    end
  end

  private
  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end

  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy

    redirect_to root_path
  end

  def show
    @posts = Post.find(params[:id])
  end

end
