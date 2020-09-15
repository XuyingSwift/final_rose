require 'test_helper'

class RosesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get roses_new_url
    assert_response :success
  end

  test "should get show" do
    get roses_show_url
    assert_response :success
  end

end
