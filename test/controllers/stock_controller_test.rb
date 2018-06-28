require 'test_helper'

class StockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stock_index_url
    assert_response :success
  end

  test "should get add" do
    get stock_add_url
    assert_response :success
  end

end
