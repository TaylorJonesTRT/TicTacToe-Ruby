# spec/gameboard_spec.rb

require_relative '../lib/gameboard.rb'

describe Gameboard do
	describe "Initialize the gameboard" do
		it "returns an array filled with 3 seperate arrays all filled with blank '' spots" do
			gameboard = Gameboard.new
			expect(gameboard.game_board).to eql([['','',''],['','',''],['','','']])
		end
	end
end