require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Usuari.stubs(:authenticate).returns(nil)
    post :create
    assert_template 'new'
    assert_nil session['usuari_id']
  end

  def test_create_valid
    Usuari.stubs(:authenticate).returns(Usuari.first)
    post :create
    assert_redirected_to root_url
    assert_equal Usuari.first.id, session['usuari_id']
  end
end
