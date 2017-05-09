require 'test_helper'

class Admin::LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_login_index_url
    assert_response :success
  end

  test "should get create" do
    get admin_login_create_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_login_destroy_url
    assert_response :success
  end

end
