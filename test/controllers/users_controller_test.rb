require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

  test "should see h1 on users/new page" do
    get new_path
    assert_select "h1", "Sign Up Form"
  end

end
