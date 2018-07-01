class StockController < ApplicationController
  def index
    @posts = Post.limit(5)
  end

  def posts
  end
end
