require "test_helper"

class Admin::OrderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_order_items_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_order_items_index_url
    assert_response :success
  end
end
