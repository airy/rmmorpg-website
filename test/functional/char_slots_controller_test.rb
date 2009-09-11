require 'test_helper'

class CharSlotsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:char_slots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create char_slot" do
    assert_difference('CharSlot.count') do
      post :create, :char_slot => { }
    end

    assert_redirected_to char_slot_path(assigns(:char_slot))
  end

  test "should show char_slot" do
    get :show, :id => char_slots(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => char_slots(:one).to_param
    assert_response :success
  end

  test "should update char_slot" do
    put :update, :id => char_slots(:one).to_param, :char_slot => { }
    assert_redirected_to char_slot_path(assigns(:char_slot))
  end

  test "should destroy char_slot" do
    assert_difference('CharSlot.count', -1) do
      delete :destroy, :id => char_slots(:one).to_param
    end

    assert_redirected_to char_slots_path
  end
end
