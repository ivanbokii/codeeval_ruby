require "test/unit"
require_relative "unique_elements"

class TestUniqueElements < Test::Unit::TestCase
  def test_returns_unique_elements
    result = unique_elements([1,1,9,3,9,5,3,2])

    assert_equal([1,9,3,5,2], result)
  end
end