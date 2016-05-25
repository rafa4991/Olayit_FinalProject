require 'test_helper'

class UserpathsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
