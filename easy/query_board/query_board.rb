class Board
  SIZE = 256
  attr_reader :self

  def initialize
    @self = Array.new(SIZE) { Array.new(SIZE, 0) }
  end

  def set_row(row, value)
    (0...SIZE).each { |column| @self[row][column] = value }
  end

  def set_col(column, value)
    (0...SIZE).each { |row| @self[row][column] = value }
  end

  def query_row(index)
    @self[index].reduce(:+)
  end

  def query_col(column)
    @self.reduce(0) { |sum, row| sum += row[column] }
  end
end