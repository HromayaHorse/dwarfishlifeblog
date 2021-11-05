require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get news" do
    get home_news_url
    assert_response :success
  end
end
