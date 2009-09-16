require 'test_helper'

class GameBaseFactionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_base_factions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_base_faction" do
    assert_difference('GameBaseFaction.count') do
      post :create, :game_base_faction => { }
    end

    assert_redirected_to game_base_faction_path(assigns(:game_base_faction))
  end

  test "should show game_base_faction" do
    get :show, :id => game_base_factions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => game_base_factions(:one).to_param
    assert_response :success
  end

  test "should update game_base_faction" do
    put :update, :id => game_base_factions(:one).to_param, :game_base_faction => { }
    assert_redirected_to game_base_faction_path(assigns(:game_base_faction))
  end

  test "should destroy game_base_faction" do
    assert_difference('GameBaseFaction.count', -1) do
      delete :destroy, :id => game_base_factions(:one).to_param
    end

    assert_redirected_to game_base_factions_path
  end
end
