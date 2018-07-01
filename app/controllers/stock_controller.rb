class StockController < ApplicationController
  def index
    @posts = Post.all
  end

  def posts
  end
end
