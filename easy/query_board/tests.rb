require "test/unit"
require_relative "query_board"

class TestQueryBoard < Test::Unit::TestCase
  def test_set_row_valid
    board = Board.new

    board.set_row(2, 7)
    all_valid = true

    board.self[2].each { |e| all_valid = false if e != 7 }

    assert(all_valid, "Row contains not only 7")
  end

  def test_set_col_valid
    board = Board.new

    board.set_col(2, 7)

    all_valid = true
    board.self.each { |e| all_valid = false if e[2] != 7 }

    assert(all_valid, "Column contains not only 7")
  end

  def test_query_row_valid
    board = Board.new

    board.set_row(5, 7)
    result = board.query_row(5)

    assert_equal(1792, result)
  end

  def test_query_col_valid
    board = Board.new

    board.set_col(2, 7)
    result = board.query_col(2)

    assert_equal(1792, result)
  end

  def test_set_row_set_col_result_valid
    board = Board.new

    board.set_col(2, 7)
    board.set_row(2, 5)
    result = board.query_col(2)

    assert_equal(1790, result)
  end
end