require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  test "should get alta" do
    get :alta
    assert_response :success
  end

  test "should get detalle" do
    get :detalle
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
