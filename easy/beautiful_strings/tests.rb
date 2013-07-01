require "test/unit"
require_relative "beautiful_strings"

class TestBeautifulStrings < Test::Unit::TestCase
  def test_return_string_beauty
    beauty = beautiful_strings('ABbCcc')
    assert_equal(152, beauty)
  end

  def test_return_string_beauty2
    beauty = beautiful_strings('Good luck in the Facebook Hacker Cup this year!')
    assert_equal(754, beauty)
  end

  def test_return_string_beauty3
    beauty = beautiful_strings('Ignore punctuation, please :)')
    assert_equal(491, beauty)
  end
end