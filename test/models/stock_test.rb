require 'test_helper'

class StockTest < ActiveSupport::TestCase
  test 'should not save stock without ticker' do
    stock = Stock.new(ticker: "", name: "Alphabet", last_price: 1.99)
    assert_not stock.save, "Saved the stock without a ticker"
  end

  test 'should save stock without name' do
    stock = Stock.new(ticker: "AAPL", name: "", last_price: 1.99)
    assert stock.save, "Saved the stock without a ticker"
  end

  test 'should save stock without last_price' do
    stock = Stock.new(ticker: "AAPL", name: "Alphabet")
    assert stock.save, "Saved the stock without a ticker"
  end

  test 'should save stock with valid data' do
    stock = Stock.new(ticker: "AAPL", name: "Alphabet", last_price: 230.445)
    assert stock.save, "Saved the valid stock"
  end
end
