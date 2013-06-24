require "test/unit"
require_relative "sum_of_primes"

class TestSumOfPrimes < Test::Unit::TestCase
  def test_sum_of_first_1000_primes
    result = sum_of_primes(1000)

    assert_equal(3682913, result)
  end
end