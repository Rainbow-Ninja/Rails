require 'test_helper'

class JuiceControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get juice_page_url
    assert_response :success
  end

end
