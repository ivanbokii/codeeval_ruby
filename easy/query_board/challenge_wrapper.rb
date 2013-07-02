require_relative 'query_board'

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