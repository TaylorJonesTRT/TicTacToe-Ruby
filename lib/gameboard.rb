# gameboard.rb

# Gameboard for the Tic Tac Toe game
class Gameboard
  attr_accessor :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def place_marker(spot, mark)
    board[board.index(spot)] = mark
  end
end
