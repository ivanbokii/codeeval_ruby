require "test/unit"
require_relative "number_multiples"

class TestNumberMultiples < Test::Unit::TestCase
  def test_produces_the_smallest_multiple_bigger_than_x
    result = number_multiple(23, 8)

    assert_equal(24, result)
  end

  def test_produces_equal_multiple
    result = number_multiple(25, 5)

    assert_equal(25, result)
  end
end