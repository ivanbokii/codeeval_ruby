require "test/unit"
require_relative "odd_numbers"

class TestOddNumbers < Test::Unit::TestCase
  def test_returns_odd_numbers
    result = odd_numbers(5)

    assert_equal([1,3,5], result)
  end
end