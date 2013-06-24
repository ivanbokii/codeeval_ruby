require "test/unit"
require_relative "fizzbuzz"

class TestFizzBuzz < Test::Unit::TestCase
  def test_result_array_should_be_empty
    result = fizzbuzz(1, 2, 0)

    assert_empty result, "Result array should be empty"
  end

  def test_result_array_should_have_the_same_length_as_n
    result = fizzbuzz(1, 2, 10)

    assert_equal(10, result.length)
  end

  def test_produce_f_when_divisible_by_a
    result = fizzbuzz(2, 3, 10)

    result.each_with_index do |item, index|
      assumed_element = index + 1

      a_divisible = assumed_element % 2 == 0
      b_divisible = assumed_element % 3 == 0
      ab_divisible = (assumed_element % 3 == 0 and assumed_element % 2 == 0)

      assert_equal('F', item) if a_divisible and not ab_divisible
      assert_equal('B', item) if b_divisible and not ab_divisible
      assert_equal('FB', item) if ab_divisible
    end
  end
end