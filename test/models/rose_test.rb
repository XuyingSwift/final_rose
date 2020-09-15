require 'test_helper'

class RoseTest < ActiveSupport::TestCase
  def setup
    @rose = Rose.new(name: "pink", meaning: "happy", image_url: "red", user_id: 1)
  end
  
  test "should be valid" do
    assert @rose.valid?
  end

  test "Name should be present" do
    @rose.name = ""
    assert_not @rose.valid?
  end

  test "meaning should be present" do
    @rose.meaning= ""
    assert_not @rose.valid?
  end

  test "Image should be present" do
    @rose.image_url = ""
    assert_not @rose.valid?
  end

  test "User Id should be present" do
    @rose.user_id = nil
    assert_not @rose.valid?
  end

  test "meaing should be present" do
   @rose.meaning = "rose" *256
   assert_not @rose.valid?
  end

end
