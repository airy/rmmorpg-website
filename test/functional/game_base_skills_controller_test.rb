require 'test_helper'

class GameBaseSkillsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_base_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_base_skill" do
    assert_difference('GameBaseSkill.count') do
      post :create, :game_base_skill => { }
    end

    assert_redirected_to game_base_skill_path(assigns(:game_base_skill))
  end

  test "should show game_base_skill" do
    get :show, :id => game_base_skills(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => game_base_skills(:one).to_param
    assert_response :success
  end

  test "should update game_base_skill" do
    put :update, :id => game_base_skills(:one).to_param, :game_base_skill => { }
    assert_redirected_to game_base_skill_path(assigns(:game_base_skill))
  end

  test "should destroy game_base_skill" do
    assert_difference('GameBaseSkill.count', -1) do
      delete :destroy, :id => game_base_skills(:one).to_param
    end

    assert_redirected_to game_base_skills_path
  end
end
