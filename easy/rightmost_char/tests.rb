require "test/unit"
require_relative "rightmost_char"

class TestRightmostChar < Test::Unit::TestCase
  def test_rightmost_char_returns_minus_one_when_not_found
    result = rightmost_char('Hello World,z')
    assert_equal(-1, result)
  end

  def test_returns_index_of_rightmost_char
    result = rightmost_char('Hello CodeEval,E')
    assert_equal(10, result)
  end
end