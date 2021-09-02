# frozen_string_literal: true

# lib/player.rb
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol, is_computer)
    @name = name
    @symbol = symbol
    @is_computer = is_computer
  end
end
