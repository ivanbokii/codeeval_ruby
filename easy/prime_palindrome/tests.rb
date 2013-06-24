require "test/unit"
require_relative "prime_palindrome"

class TestPrimePalindrome < Test::Unit::TestCase
  def test_finds_biggest_palindrome_prime_number
    result = prime_palindrome(1000)

    assert(result == 929, "Biggest prime palindrome number is wrong")
  end
end