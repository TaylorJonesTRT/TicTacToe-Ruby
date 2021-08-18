# gameboard.rb

# Gameboard for the Tic Tac Toe game
class Gameboard
  attr_accessor :game_board

  def initialize
    @game_board = []
    i = 0
    while i < 3
      game_board.push(['', '', ''])
      i += 1
    end
  end
end
