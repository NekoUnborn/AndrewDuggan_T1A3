require 'test/unit'
require_relative '../methods/login_methods'

class LoginTest < Test::Unit::TestCase
  def test_find_users
    assert_true(find_users("Me", [["Me", "Pass"], ["Andrew", "Pass"], ["Hello", "Pass"]]))
    assert_false(find_users("hi", [["Me", "Pass"], ["Andrew", "Pass"], ["Hello", "Pass"]]))
  end
end

def get_user_details
  username = validate_input("username", "your username")
  password = validate_input("password", "a password")
  [username, password]
end