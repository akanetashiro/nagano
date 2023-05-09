require "test_helper"

class Public::OrderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_order_items_show_url
    assert_response :success
  end

  test "should get index" do
    get public_order_items_index_url
    assert_response :success
  end
end
