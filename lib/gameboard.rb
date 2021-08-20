# gameboard.rb

# Gameboard for the Tic Tac Toe game
class Gameboard
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
    board[spot - 1] = mark
  end

  def check_for_winner
    winner = false
    until winner
      WINNING_CELLS.each do |combo|
        if board[combo[1] - 1] == board[combo[0] - 1] && board[combo[2] - 1] == board[combo[0] - 1]
          winner = true
          break
        else
          winner = false
        end
      end
    end
    winner
  end
end
