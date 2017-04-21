require 'test_helper'

class UserFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_foods_index_url
    assert_response :success
  end

  test "should get show" do
    get user_foods_show_url
    assert_response :success
  end

  test "should get create" do
    get user_foods_create_url
    assert_response :success
  end

  test "should get update" do
    get user_foods_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_foods_destroy_url
    assert_response :success
  end

end
