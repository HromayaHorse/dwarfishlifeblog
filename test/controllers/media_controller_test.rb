require "test_helper"

class MediaControllerTest < ActionDispatch::IntegrationTest
  test "should get screenshots" do
    get media_screenshots_url
    assert_response :success
  end
end
