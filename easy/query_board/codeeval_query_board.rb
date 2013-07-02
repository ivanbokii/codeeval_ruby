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

board = Board.new

while line = gets
  command, *args = line.split(' ')
  
  case command
  when "SetRow" then board.set_row(args[0].to_i, args[1].to_i)
  when "SetCol" then board.set_col(args[0].to_i, args[1].to_i)
  when "QueryRow" then p board.query_row(args[0].to_i)
  when "QueryCol" then p board.query_col(args[0].to_i)
  end
end

