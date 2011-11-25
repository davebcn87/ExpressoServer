require 'test_helper'

class UsuarisControllerTest < ActionController::TestCase
  setup do
    @usuari = usuaris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuaris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuari" do
    assert_difference('Usuari.count') do
      post :create, usuari: @usuari.attributes
    end

    assert_redirected_to usuari_path(assigns(:usuari))
  end

  test "should show usuari" do
    get :show, id: @usuari.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuari.to_param
    assert_response :success
  end

  test "should update usuari" do
    put :update, id: @usuari.to_param, usuari: @usuari.attributes
    assert_redirected_to usuari_path(assigns(:usuari))
  end

  test "should destroy usuari" do
    assert_difference('Usuari.count', -1) do
      delete :destroy, id: @usuari.to_param
    end

    assert_redirected_to usuaris_path
  end
end
