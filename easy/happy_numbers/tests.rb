require "test/unit"
require_relative "happy_numbers"

class TestHappyNumbers < Test::Unit::TestCase
  def test_happy_numbers_cycle
    result = happy_numbers(22)

    assert_equal(0, result)
  end

  def test_happy_numbers_valid_number
    result = happy_numbers(7)

    assert_equal(1, result)
  end
end