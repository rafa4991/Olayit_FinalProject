require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get productpage" do
    get :productpage
    assert_response :success
  end

end
