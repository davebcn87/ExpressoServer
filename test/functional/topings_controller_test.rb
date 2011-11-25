require 'test_helper'

class TopingsControllerTest < ActionController::TestCase
  setup do
    @toping = topings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toping" do
    assert_difference('Toping.count') do
      post :create, toping: @toping.attributes
    end

    assert_redirected_to toping_path(assigns(:toping))
  end

  test "should show toping" do
    get :show, id: @toping.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toping.to_param
    assert_response :success
  end

  test "should update toping" do
    put :update, id: @toping.to_param, toping: @toping.attributes
    assert_redirected_to toping_path(assigns(:toping))
  end

  test "should destroy toping" do
    assert_difference('Toping.count', -1) do
      delete :destroy, id: @toping.to_param
    end

    assert_redirected_to topings_path
  end
end
