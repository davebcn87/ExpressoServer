require 'test_helper'

class BegudesControllerTest < ActionController::TestCase
  setup do
    @beguda = begudes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:begudes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beguda" do
    assert_difference('Beguda.count') do
      post :create, beguda: @beguda.attributes
    end

    assert_redirected_to beguda_path(assigns(:beguda))
  end

  test "should show beguda" do
    get :show, id: @beguda.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beguda.to_param
    assert_response :success
  end

  test "should update beguda" do
    put :update, id: @beguda.to_param, beguda: @beguda.attributes
    assert_redirected_to beguda_path(assigns(:beguda))
  end

  test "should destroy beguda" do
    assert_difference('Beguda.count', -1) do
      delete :destroy, id: @beguda.to_param
    end

    assert_redirected_to begudes_path
  end
end
