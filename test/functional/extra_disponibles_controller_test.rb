require 'test_helper'

class ExtraDisponiblesControllerTest < ActionController::TestCase
  setup do
    @extra_disponible = extra_disponibles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extra_disponibles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extra_disponible" do
    assert_difference('ExtraDisponible.count') do
      post :create, extra_disponible: @extra_disponible.attributes
    end

    assert_redirected_to extra_disponible_path(assigns(:extra_disponible))
  end

  test "should show extra_disponible" do
    get :show, id: @extra_disponible.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extra_disponible.to_param
    assert_response :success
  end

  test "should update extra_disponible" do
    put :update, id: @extra_disponible.to_param, extra_disponible: @extra_disponible.attributes
    assert_redirected_to extra_disponible_path(assigns(:extra_disponible))
  end

  test "should destroy extra_disponible" do
    assert_difference('ExtraDisponible.count', -1) do
      delete :destroy, id: @extra_disponible.to_param
    end

    assert_redirected_to extra_disponibles_path
  end
end
