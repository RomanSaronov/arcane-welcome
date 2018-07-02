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

  @pieSize = {
      :height => 500,
      :width => 500
  }

  @pieData = [
      {
          value: 300,
          color:"#F7464A",
          highlight: "#FF5A5E",
          label: "Red"
      },
      {
          value: 50,
          color: "#46BFBD",
          highlight: "#5AD3D1",
          label: "Green"
      },
      {
          value: 100,
          color: "#FDB45C",
          highlight: "#FFC870",
          label: "Yellow"
      },
      {
          value: 40,
          color: "#949FB1",
          highlight: "#A8B3C5",
          label: "Grey"
      },
      {
          value: 120,
          color: "#4D5360",
          highlight: "#616774",
          label: "Dark Grey"
      }

  ].to_json

end
