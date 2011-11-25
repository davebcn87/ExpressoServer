require 'test_helper'

class BotiguesControllerTest < ActionController::TestCase
  setup do
    @botiga = botigues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:botigues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create botiga" do
    assert_difference('Botiga.count') do
      post :create, botiga: @botiga.attributes
    end

    assert_redirected_to botiga_path(assigns(:botiga))
  end

  test "should show botiga" do
    get :show, id: @botiga.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @botiga.to_param
    assert_response :success
  end

  test "should update botiga" do
    put :update, id: @botiga.to_param, botiga: @botiga.attributes
    assert_redirected_to botiga_path(assigns(:botiga))
  end

  test "should destroy botiga" do
    assert_difference('Botiga.count', -1) do
      delete :destroy, id: @botiga.to_param
    end

    assert_redirected_to botigues_path
  end
end
