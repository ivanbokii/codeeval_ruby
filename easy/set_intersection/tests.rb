require "test/unit"
require_relative "set_intersection"

class TestSetIntersection < Test::Unit::TestCase
  def test_set_intersection_finds_intersection
    result = set_intersection([1, 2, 3, 4], [4, 5, 6, 7])

    assert_equal([4], result)
  end

  def test_set_intersection_finds_intersection2
    result = set_intersection([1, 2, 3, 4, 5], [4, 5, 6, 7])

    assert_equal([4, 5], result)
  end

  def test_no_intersection_returns_empty_array
    result = set_intersection([1, 2, 3, 4], [5, 6, 7])

    assert_empty(result)
  end
end