class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(requested_stock)
      if @stock
        respond_to do |format|
          format.js { render partial: 'users/result'}
        end
      else
        respond_to do |format|
          flash.now[:alert] = "There is no that ticker symbol"
          format.js { render partial: 'users/result'}
        end
      end
    else
      respond_to do |format|
        flash.now[:alert] = "Please enter a symbol"
        format.js { render partial: 'users/result'}
      end
    end
  end
  private

    def requested_stock
      params[:stock]
    end
end