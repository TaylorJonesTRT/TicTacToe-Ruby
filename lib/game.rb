# frozen_string_literal: true

# lib/game.rb
class Game
  def initialize
    @board = Board.new
    @amount_of_players = 0
    @first_player = nil
    @second_player = nil
    @current_player = nil
  end

  # def play_game
  # end

  def game_start_screen
    puts 'Welcome to the game of Tic Tac Toe!'
    puts 'How many players will be playing? (1 or 2)'
    @amount_of_players = gets.chomp
    case amount_of_players
    when 2
      puts 'What is the first players symbol? (X or O)'
      first_player_symbol = gets.chomp
      second_player_symbol = if first_player_symbol == 'X'
                               'O'
                             else
                               'X'
                             end
      @first_player = Player.new('Player 1', first_player_symbol, false)
      @second_player = Player.new('Player 2', second_player_symbol, false)
    else
      puts 'What is your name?'
      first_player_name = gets.chomp
      @first_player = Player.new(first_player_name, 'X', false)
      @second_player = Player.new('Computer', 'O', true)
    end
  end

  # def player_move(player)
  # end

  def switch_current_player(player)
    @current_player = case player.name
                      when 'Player 1'
                        @second_player
                      else
                        @first_player
                      end
    @current_player
  end

  # def game_over
  # end
end
