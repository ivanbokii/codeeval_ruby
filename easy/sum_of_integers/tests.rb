require "test/unit"
require_relative "sum_of_integers"

class TestSumOfIntegers < Test::Unit::TestCase
  def test_no_integers_returns_0
    result = sum_of_integers([])
    assert_equal(0, result)
  end

  def test_returns_sum_of_integers
    result = sum_of_integers([1, 2, 3, 4])
    assert_equal(10, result)
  end
end