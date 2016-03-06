require 'test_helper'

class ZapateriaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get alta" do
    get :alta
    assert_response :success
  end

  test "should get baja" do
    get :baja
    assert_response :success
  end

  test "should get modificar" do
    get :modificar
    assert_response :success
  end

end
