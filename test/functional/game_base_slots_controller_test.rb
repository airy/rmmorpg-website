require 'test_helper'

class GameBaseSlotsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_base_slots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_base_slot" do
    assert_difference('GameBaseSlot.count') do
      post :create, :game_base_slot => { }
    end

    assert_redirected_to game_base_slot_path(assigns(:game_base_slot))
  end

  test "should show game_base_slot" do
    get :show, :id => game_base_slots(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => game_base_slots(:one).to_param
    assert_response :success
  end

  test "should update game_base_slot" do
    put :update, :id => game_base_slots(:one).to_param, :game_base_slot => { }
    assert_redirected_to game_base_slot_path(assigns(:game_base_slot))
  end

  test "should destroy game_base_slot" do
    assert_difference('GameBaseSlot.count', -1) do
      delete :destroy, :id => game_base_slots(:one).to_param
    end

    assert_redirected_to game_base_slots_path
  end
end
