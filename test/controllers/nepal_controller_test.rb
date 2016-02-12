require 'test_helper'

class NepalControllerTest < ActionController::TestCase
  test "should get Kathmandu" do
    get :Kathmandu
    assert_response :success
  end

end
