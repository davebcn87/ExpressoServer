require 'test_helper'

class UsuariTest < ActiveSupport::TestCase
  def new_usuari(attributes = {})
    attributes[:username] ||= 'foo'
    attributes[:email] ||= 'foo@example.com'
    attributes[:password] ||= 'abc123'
    attributes[:password_confirmation] ||= attributes[:password]
    usuari = Usuari.new(attributes)
    usuari.valid? # run validations
    usuari
  end

  def setup
    Usuari.delete_all
  end

  def test_valid
    assert new_usuari.valid?
  end

  def test_require_username
    assert_equal ["can't be blank"], new_usuari(:username => '').errors[:username]
  end

  def test_require_password
    assert_equal ["can't be blank"], new_usuari(:password => '').errors[:password]
  end

  def test_require_well_formed_email
    assert_equal ["is invalid"], new_usuari(:email => 'foo@bar@example.com').errors[:email]
  end

  def test_validate_uniqueness_of_email
    new_usuari(:email => 'bar@example.com').save!
    assert_equal ["has already been taken"], new_usuari(:email => 'bar@example.com').errors[:email]
  end

  def test_validate_uniqueness_of_username
    new_usuari(:username => 'uniquename').save!
    assert_equal ["has already been taken"], new_usuari(:username => 'uniquename').errors[:username]
  end

  def test_validate_odd_characters_in_username
    assert_equal ["should only contain letters, numbers, or .-_@"], new_usuari(:username => 'odd ^&(@)').errors[:username]
  end

  def test_validate_password_length
    assert_equal ["is too short (minimum is 4 characters)"], new_usuari(:password => 'bad').errors[:password]
  end

  def test_require_matching_password_confirmation
    assert_equal ["doesn't match confirmation"], new_usuari(:password_confirmation => 'nonmatching').errors[:password]
  end

  def test_generate_password_hash_and_salt_on_create
    usuari = new_usuari
    usuari.save!
    assert usuari.password_hash
    assert usuari.password_salt
  end

  def test_authenticate_by_username
    Usuari.delete_all
    usuari = new_usuari(:username => 'foobar', :password => 'secret')
    usuari.save!
    assert_equal usuari, Usuari.authenticate('foobar', 'secret')
  end

  def test_authenticate_by_email
    Usuari.delete_all
    usuari = new_usuari(:email => 'foo@bar.com', :password => 'secret')
    usuari.save!
    assert_equal usuari, Usuari.authenticate('foo@bar.com', 'secret')
  end

  def test_authenticate_bad_username
    assert_nil Usuari.authenticate('nonexisting', 'secret')
  end

  def test_authenticate_bad_password
    Usuari.delete_all
    new_usuari(:username => 'foobar', :password => 'secret').save!
    assert_nil Usuari.authenticate('foobar', 'badpassword')
  end
end
