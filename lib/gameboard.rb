# gameboard.rb

require 'player'

# Gameboard for the Tic Tac Toe game
class Gameboard
  include Player

  attr_accessor :board

  WINNING_CELLS = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 5, 9],
    [2, 5, 8],
    [3, 5, 7],
    [4, 5, 6],
    [7, 8, 9]
  ]

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def place_marker(spot, mark)
    board[board.index(spot)] = mark
  end

  def check_for_winner
    # need to refactor this into an each method
    for combo in WINNING_CELLS do
      if combo[1] == combo[0] && combo[2] == combo[0]
        true
      else
        false
      end
    end
  end
end
