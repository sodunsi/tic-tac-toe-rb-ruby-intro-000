WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  #bottom row
  [0,3,6],  #left column
  [1,4,7],  #middle column
  [2,5,8],  #right column
  [0,4,8],  #diagonal
  [6,4,2]  #diagonals
]
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
    user_input.to_i - 1
end
def move(board, index)
   board[index] = current_player
end
def position_taken?(board, position)
  board[position] != " " && board[position] != ""
end
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
