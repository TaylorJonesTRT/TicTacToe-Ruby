# lib/game.rb
class Game
	def initialize
		@board = Board.new
		@amount_of_players
		@first_player = nil
		@second_player = nil
		@current_player = nil
	end

	def game_start_screen
		puts "Welcome to the game of Tic Tac Toe!"
		puts "How many players will be playing? (1 or 2)"
		@amount_of_players = gets
end
