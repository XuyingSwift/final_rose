require 'test_helper'

class RosesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
      get win_a_rose_path
      assert_response :success
    end
end
