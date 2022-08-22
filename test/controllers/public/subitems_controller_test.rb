require "test_helper"

class Public::SubitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_subitems_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_subitems_edit_url
    assert_response :success
  end

  test "should get index" do
    get public_subitems_index_url
    assert_response :success
  end
end
