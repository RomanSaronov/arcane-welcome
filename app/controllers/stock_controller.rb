class StockController < ApplicationController
  def index
    @stock = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)

    if @stock.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy

    redirect_to root_path
  end

  private
  def stock_params
    params.require(:stock).permit(:name, :price, :duration, :interest)
  end
end
