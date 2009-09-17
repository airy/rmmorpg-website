require 'test_helper'

class GameBaseSkillReagentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_base_skill_reagents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_base_skill_reagent" do
    assert_difference('GameBaseSkillReagent.count') do
      post :create, :game_base_skill_reagent => { }
    end

    assert_redirected_to game_base_skill_reagent_path(assigns(:game_base_skill_reagent))
  end

  test "should show game_base_skill_reagent" do
    get :show, :id => game_base_skill_reagents(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => game_base_skill_reagents(:one).to_param
    assert_response :success
  end

  test "should update game_base_skill_reagent" do
    put :update, :id => game_base_skill_reagents(:one).to_param, :game_base_skill_reagent => { }
    assert_redirected_to game_base_skill_reagent_path(assigns(:game_base_skill_reagent))
  end

  test "should destroy game_base_skill_reagent" do
    assert_difference('GameBaseSkillReagent.count', -1) do
      delete :destroy, :id => game_base_skill_reagents(:one).to_param
    end

    assert_redirected_to game_base_skill_reagents_path
  end
end
