class StockController < ApplicationController
  def index
    @stock = Stock.where(user: current_user).all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.user = current_user
    if @stock.save
      redirect_to root_path,
                  flash[:success] = 'Stock added successfully'
    else
      render :new,
             flash[:error] = 'Please check the form, something wrong'
    end
  end

  def show
    @stock = Stock.find(params[:id])

    if @stock.user != current_user
      redirect_to root_path,
                  flash[:error] = 'Sorry, but you are only allowed to view
      your own stocks page'
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:name, :price, :duration, :interest)
  end
end
