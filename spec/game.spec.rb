# frozen_string_literal: true

require '../lib/gameboard'
require '../lib/game'
require '../lib/player'

# Mock function for changing the player
def switch_player(player)
  current_player = case player.name
  when 'Player 1'
    second_player
  else
    first_player
  end
  current_player
end

describe Game do
  describe 'Game switches players' do
    it 'Takes a player and returns the other player' do
      first_player = Player.new('Player 1', 'X')
      second_player = Player.new('Computer', 'O')
      expect(switch_player(first_player).to be(second_player))
    end
  end
end