require 'test_helper'

class GameBaseItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_base_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_base_item" do
    assert_difference('GameBaseItem.count') do
      post :create, :game_base_item => { }
    end

    assert_redirected_to game_base_item_path(assigns(:game_base_item))
  end

  test "should show game_base_item" do
    get :show, :id => game_base_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => game_base_items(:one).to_param
    assert_response :success
  end

  test "should update game_base_item" do
    put :update, :id => game_base_items(:one).to_param, :game_base_item => { }
    assert_redirected_to game_base_item_path(assigns(:game_base_item))
  end

  test "should destroy game_base_item" do
    assert_difference('GameBaseItem.count', -1) do
      delete :destroy, :id => game_base_items(:one).to_param
    end

    assert_redirected_to game_base_items_path
  end
end
