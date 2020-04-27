class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks # user_stocks are provided by devise gem
  end
end
