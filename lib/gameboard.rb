# lib/gameboard.rb

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
  ].freeze

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  # Method to show the gameboard on the screen
  def show_board
    puts <<-HEREDOC
       #{board[0]} | #{board[1]} | #{board[2]}
      ---+---+---
       #{board[3]} | #{board[4]} | #{board[5]}
      ---+---+---
       #{board[6]} | #{board[7]} | #{board[8]}
    HEREDOC
  end

  # Method for placing a marker on a chosen spot by the player/cpu
  def place_marker(spot, mark)
    board[spot - 1] = mark
  end

  # Method to run after each turn to check if there is a winner
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

  # Method to check if the board is full in case of a tie
  def check_for_tie
    filled_spots = []
    i = 1
    board.each do |spot|
      if spot != i
        filled_spots.push(i)
        i += 1
        next
      else
        i += 1
        next
      end
    end
    if filled_spots.length == 9
      true
    else
      false
    end
  end

  # Method to reset the gameboard
  def reset_board
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
