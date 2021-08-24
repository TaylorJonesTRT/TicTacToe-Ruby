# lib/game.rb
class Game
	def initialize
		@board = Board.new
		@first_player = nil
		@second_player = nil
		@current_player = nil
	end
end
