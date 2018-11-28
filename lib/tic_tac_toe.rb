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
def move(board, index, current_player)
   board[index] = current_player
end
def position_taken?(board, position)
  board[position] != " " && board[position] != ""
end
def valid_move?
end