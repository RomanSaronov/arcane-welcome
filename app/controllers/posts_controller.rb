class PostsController < ApplicationController
  def create
    @posts = Post.new(params)
    if @posts.save
      redirect_to 'stock#index'
    else
      render :new
    end
  end
  private
  def params
    params.require(:posts).permit(:name, :price, :duration, :interest)
  end
  end
end
