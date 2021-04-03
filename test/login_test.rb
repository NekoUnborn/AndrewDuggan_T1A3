require 'test/unit'
require_relative '../login'

class LoginTest < Test::Unit::TestCase

  def setup # Runs before each of the tests
    @username = Customer.new("John", "Smith")
    @customer2 = Customer.new("Jane", "Doe")
  end

end