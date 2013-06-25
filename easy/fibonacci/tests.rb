require "test/unit"
require_relative "fibonacci"

class TestFibonacci < Test::Unit::TestCase
  def test_when_zero_input_produce_zero
    result = fibonacci(0)

    assert_equal(0, result)
  end

  def test_produces_correct_result
    result = fibonacci(12)

    assert_equal(144, result)
  end
end