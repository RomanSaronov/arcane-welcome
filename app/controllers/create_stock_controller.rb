class CreateStockController < ApplicationController
  def create
    @stocks = CreateStocks.new(stock_params)

    if @stocks.save
      flash[:notice] = "Stock was created."
      redirect_to 'stock/index'
    else
      render :'stock/add'
    end
  end

  private
  def stock_params
    params.require(:stocks).permit(:name, :price, :interest, :duration)
  end
end
