class StockController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def new
    @stocks = Stock.new
  end

  def create
    @stocks = Stock.new(stock_params)

    if @stocks.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @stocks = Stock.find(params[:id])
  end

  def destroy
    @stocks.destroy
  end

  private
  def stock_params
    params.require(:stock).permit(:name, :price, :duration, :interest)
  end
end
