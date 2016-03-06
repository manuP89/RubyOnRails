require 'test_helper'

class ClienteControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get alta" do
    get :alta
    assert_response :success
  end

end
