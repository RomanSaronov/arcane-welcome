class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to 'stock/index'
    else
      render "new"
    end
  end

  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end
end
