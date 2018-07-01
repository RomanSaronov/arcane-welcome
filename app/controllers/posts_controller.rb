class PostsController < ApplicationController
  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to :controller => 'stock', :action => 'index'
    else

    end
  end

  private
  def post_params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end
end
