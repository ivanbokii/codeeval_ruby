require "test/unit"
require_relative "selfdescribing_numbers"

class TestSelfdescribingNumbers < Test::Unit::TestCase
  def test_not_selfdescribing_returns_0
    result = selfdescribing_numbers(22)

    assert_equal(0, result)
  end

  def test_not_selfdescribing_returns_0_2
    result = selfdescribing_numbers(3000)

    assert_equal(0, result)
  end

  def test_selfdescribing_returns_1
    result = selfdescribing_numbers(1210)

    assert_equal(1, result)
  end
end