require 'test_helper'

class UserExercisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_exercises_index_url
    assert_response :success
  end

  test "should get show" do
    get user_exercises_show_url
    assert_response :success
  end

  test "should get create" do
    get user_exercises_create_url
    assert_response :success
  end

  test "should get update" do
    get user_exercises_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_exercises_destroy_url
    assert_response :success
  end

end
