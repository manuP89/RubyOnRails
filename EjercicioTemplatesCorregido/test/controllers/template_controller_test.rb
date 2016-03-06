require 'test_helper'

class TemplateControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get enrutar" do
    get :enrutar
    assert_response :success
  end

  test "should get mostrar" do
    get :mostrar
    assert_response :success
  end

  test "should get resultado" do
    get :resultado
    assert_response :success
  end

end
