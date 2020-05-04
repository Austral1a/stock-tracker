class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks # current_user are provided by devise gem
  end
  def my_friends
    @tracked_friends = current_user.friends
  end
end
