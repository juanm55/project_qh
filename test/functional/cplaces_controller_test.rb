require 'test_helper'

class CplacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
