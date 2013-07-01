require "test/unit"
require_relative "armstrong_numbers"

class TestArmstrongNumbers < Test::Unit::TestCase
  def test_armstrong_numbers_optimized_valid
    result = armstrong_numbers_optimized(6)

    assert(result, "True")
  end

  def test_armstrong_numbers_optimized_valid_2
    result = armstrong_numbers_optimized(153)

    assert(result, "True")
  end

  def test_armstrong_numbers_optimized_not_valid
    result = armstrong_numbers_optimized(351)

    refute(result, "False")
  end

  def test_armstrong_numbers_valid
    result = armstrong_numbers(6)

    assert(result, "True")
  end

  def test_armstrong_numbers_valid_2
    result = armstrong_numbers(153)

    assert(result, "True")
  end

  def test_armstrong_numbers_not_valid
    result = armstrong_numbers(351)

    refute(result, "False")
  end
end