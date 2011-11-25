require 'test_helper'

class ExtresControllerTest < ActionController::TestCase
  setup do
    @extra = extres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extra" do
    assert_difference('Extra.count') do
      post :create, extra: @extra.attributes
    end

    assert_redirected_to extra_path(assigns(:extra))
  end

  test "should show extra" do
    get :show, id: @extra.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extra.to_param
    assert_response :success
  end

  test "should update extra" do
    put :update, id: @extra.to_param, extra: @extra.attributes
    assert_redirected_to extra_path(assigns(:extra))
  end

  test "should destroy extra" do
    assert_difference('Extra.count', -1) do
      delete :destroy, id: @extra.to_param
    end

    assert_redirected_to extres_path
  end
end
