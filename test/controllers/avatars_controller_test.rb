require 'test_helper'

class AvatarsControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get avatars_upload_url
    assert_response :success
  end

end
