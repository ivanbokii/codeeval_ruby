require "test/unit"
require_relative "reverse_words"

class TestReverseWords < Test::Unit::TestCase
  def test_words_are_reversed
    reversed = reverse_words('hello this cruel world')

    assert_equal('world cruel this hello', reversed)
  end
end