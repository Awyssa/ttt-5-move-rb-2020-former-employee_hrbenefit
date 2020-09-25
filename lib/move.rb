def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board, index, player = "X")
  if index == 1..9
    puts "Sorry, that is not a valid number, please put a number between 1 to 9"
    user_input = gets.strip
    index = input_to_index(user_input)
    move(board, index, player = "X")
  else
  board[index] = player
  end
end
