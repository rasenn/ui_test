require 'test_helper'

class UiTestControllerTest < ActionController::TestCase
  test "should get type1" do
    get :type1
    assert_response :success
  end

end
