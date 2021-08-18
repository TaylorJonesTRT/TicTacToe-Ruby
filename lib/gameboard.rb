# gameboard.rb

# Gameboard for the Tic Tac Toe game
class Gameboard
  attr_accessor :board

  def initialize
    @board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ]
  end

  def place_marker(row, spot, mark)
    case row
    when 'A'
      board[0][spot - 1] = mark
    when 'B'
      board[1][spot - 1] = mark
    when 'C'
      board[2][spot - 1] = mark
    end
  end
end
