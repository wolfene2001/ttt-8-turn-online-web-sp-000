def turn(board)
  puts"Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index) == true && move(board, index, character = "X") == true
  #   true
  #  move(board, index, character = "X")
     true
  else turn(board)
  true
  end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  # puts "What is your next move? Please enter a number 1 - 9."
  # input = gets.to_i
  input.to_i - 1
end

def move(board, index, character = "X")
#   board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#   def update_array_at _with(array, index,value)
    board[index] = character
end
#
#   update_array_at_with(board, 0, "X")
# end

# code your #valid_move? method here
def valid_move?(board, index)
#  (index).between?(0,8) == true
#&&  position_taken(board, index) == false
#&& index == " " || ""
#
if (index).between?(0,8) && !position_taken?(board, index)
  true
else false
 end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || "" || nil
    false
  end
end
