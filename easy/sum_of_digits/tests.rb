require "test/unit"
require_relative "sum_of_digits"

class TestSumOfDigits < Test::Unit::TestCase
  def test_one_digit_equals_one_digit
    result = sum_of_digits(4)

    assert_equal(4, result)
  end

  def test_produces_sum_of_digits
    result = sum_of_digits(219)

    assert_equal(12, result)
  end
end