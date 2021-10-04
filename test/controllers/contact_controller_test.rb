require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get links" do
    get contact_links_url
    assert_response :success
  end
end
