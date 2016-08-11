require 'rubygems'
require 'active_model'
require 'minitest/autorun'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'email_validator'

class User
  include ActiveModel::Validations
  validates :email, :email => true

  def initialize(attributes = {})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end

class TestUser < MiniTest::Unit::TestCase
  def test_email
    assert User.new(:email => 'neeraj@BigBinary.com').valid?
    refute User.new(:email => 'john @msn.com').valid?
    refute User.new(:email => 'john@msncom').valid?
  end
end

class TestEmailValidator < MiniTest::Unit::TestCase
  def test_valid
    assert EmailValidator.valid?('neeraj@BigBinary.com')
    refute EmailValidator.valid?('john @msn.com')
    refute EmailValidator.valid?('john@msncom')
  end
end

