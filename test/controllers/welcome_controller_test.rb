require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  def setup
    WebMock.allow_net_connect!
    VCR.turn_off!
  end

  def teardown
    WebMock.disable_net_connect!
    VCR.turn_on!
  end

  test "should get index" do
    get :index
    assert_response :success
  end
end
