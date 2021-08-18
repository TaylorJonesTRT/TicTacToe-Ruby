# spec/gameboard_spec.rb

require_relative '../lib/gameboard'

describe Gameboard do
  describe 'Initialize the gameboard' do
    it "returns an array filled with 3 seperate arrays all filled with blank '' spots" do
      gameboard = Gameboard.new
      expect(gameboard.board).to eql([['', '', ''], ['', '', ''], ['', '', '']])
    end
  end
  describe

  describe 'Placing a players marker on the board with given coordinates' do
    it 'returns the gameboard with the correct spot marked' do
      gameboard = Gameboard.new
      gameboard.place_marker('B', 3, 'X')
      expect(gameboard.board).to eql([['', '', ''], ['', '', 'X'], ['', '', '']])
    end
  end
end
