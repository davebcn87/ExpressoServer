require 'test_helper'

class ComandesControllerTest < ActionController::TestCase
  setup do
    @comanda = comandes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comandes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comanda" do
    assert_difference('Comanda.count') do
      post :create, comanda: @comanda.attributes
    end

    assert_redirected_to comanda_path(assigns(:comanda))
  end

  test "should show comanda" do
    get :show, id: @comanda.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comanda.to_param
    assert_response :success
  end

  test "should update comanda" do
    put :update, id: @comanda.to_param, comanda: @comanda.attributes
    assert_redirected_to comanda_path(assigns(:comanda))
  end

  test "should destroy comanda" do
    assert_difference('Comanda.count', -1) do
      delete :destroy, id: @comanda.to_param
    end

    assert_redirected_to comandes_path
  end
end
