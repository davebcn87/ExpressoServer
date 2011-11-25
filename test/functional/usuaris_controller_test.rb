require 'test_helper'

class UsuarisControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Usuari.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Usuari.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
    assert_equal assigns['usuari'].id, session['usuari_id']
  end

  def test_edit_without_user
    get :edit, :id => "ignored"
    assert_redirected_to login_url
  end

  def test_edit
    @controller.stubs(:current_usuari).returns(Usuari.first)
    get :edit, :id => "ignored"
    assert_template 'edit'
  end

  def test_update_without_user
    put :update, :id => "ignored"
    assert_redirected_to login_url
  end

  def test_update_invalid
    @controller.stubs(:current_usuari).returns(Usuari.first)
    Usuari.any_instance.stubs(:valid?).returns(false)
    put :update, :id => "ignored"
    assert_template 'edit'
  end

  def test_update_valid
    @controller.stubs(:current_usuari).returns(Usuari.first)
    Usuari.any_instance.stubs(:valid?).returns(true)
    put :update, :id => "ignored"
    assert_redirected_to root_url
  end
end
