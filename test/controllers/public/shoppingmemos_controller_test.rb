require "test_helper"

class Public::ShoppingmemosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_shoppingmemos_index_url
    assert_response :success
  end
end
