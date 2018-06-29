class StockController < ApplicationController
  def index
    @posts = Post.limit(5)
  end

  def add
    def create
      @posts = Post.new(post_params)
      if @posts.save
        redirect_to @posts
      else
        render "new"
      end
    end

    def post_params
      params.require(:posts).permit(:name, :price, :duration, :interest)
    end
  end
end
