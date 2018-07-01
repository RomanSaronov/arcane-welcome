class StockController < ApplicationController
  def index
    @posts = Post.limit(5)
  end

  def posts
    @posts = Post.find(params[:id])
  end
end
