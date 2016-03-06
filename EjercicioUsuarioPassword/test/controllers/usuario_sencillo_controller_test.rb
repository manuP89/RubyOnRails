require 'test_helper'

class UsuarioSencilloControllerTest < ActionController::TestCase
  test "should get validar" do
    get :validar
    assert_response :success
  end

  test "should get alta" do
    get :alta
    assert_response :success
  end

end
