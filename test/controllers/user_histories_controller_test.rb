require 'test_helper'

class UserHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_histories_index_url
    assert_response :success
  end

  test "should get show" do
    get user_histories_show_url
    assert_response :success
  end

  test "should get create" do
    get user_histories_create_url
    assert_response :success
  end

  test "should get update" do
    get user_histories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_histories_destroy_url
    assert_response :success
  end

end
