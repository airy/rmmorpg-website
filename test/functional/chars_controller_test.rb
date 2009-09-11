require 'test_helper'

class CharsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create char" do
    assert_difference('Char.count') do
      post :create, :char => { }
    end

    assert_redirected_to char_path(assigns(:char))
  end

  test "should show char" do
    get :show, :id => chars(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => chars(:one).to_param
    assert_response :success
  end

  test "should update char" do
    put :update, :id => chars(:one).to_param, :char => { }
    assert_redirected_to char_path(assigns(:char))
  end

  test "should destroy char" do
    assert_difference('Char.count', -1) do
      delete :destroy, :id => chars(:one).to_param
    end

    assert_redirected_to chars_path
  end
end
