require "test/unit"
require_relative "lowercase"

class TestLowercase < Test::Unit::TestCase
  def test_uppercase_input_lowercase_output
    result = lowercase("HELLO this CRUEL world")

    assert_equal("hello this cruel world", result)
  end

  def test_lowercase_input_lowercase_output
    result = lowercase("hello this cruel world")

    assert_equal("hello this cruel world", result)
  end
end