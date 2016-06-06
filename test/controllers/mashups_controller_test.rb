require 'test_helper'

class MashupsControllerTest < ActionController::TestCase
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

  test "index should assign categories" do
    get :index
    assert_not_nil assigns(:joke)
  end

  test "index should assign search_term" do
    get :index
    assert_not_nil assigns(:search_term)
  end

  test "index should assign photo" do
    get :index
    assert_not_nil assigns(:photo)
  end

    test "should get nerdy" do
    get :nerdy
    assert_response :success
  end

  test "nerdy should assign categories" do
    get :nerdy
    assert_not_nil assigns(:joke)
  end

  test "nerdy should assign search_term" do
    get :nerdy
    assert_not_nil assigns(:search_term)
  end

  test "nerdy should assign photo" do
    get :nerdy
    assert_not_nil assigns(:photo)
  end

  test "should create mashup" do
    assert_difference('Mashup.count') do
      post :favorite, {joke: 'Some joke', photo: 'Some url'}
    end
  end

  test "should get favorites" do
    get :favorites
    assert_response :success
    assert_not_nil assigns(:mashups)
  end
end
