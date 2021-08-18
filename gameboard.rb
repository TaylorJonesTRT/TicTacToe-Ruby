# gameboard.rb

# Gameboard for the Tic Tac Toe game
class Gameboard
  def initialize
    @game_board = []
    i = 0
    while i < 100
      game_board.push('')
      i += 1
    end
  end
end
