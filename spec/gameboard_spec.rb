# spec/gameboard_spec.rb

require '../lib/gameboard'

describe Gameboard do
  describe 'Initialize the gameboard' do
    it "Returns an array filled with 3 seperate arrays all filled with blank '' spots" do
      gameboard = Gameboard.new
      expect(gameboard.board).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
  describe 'Placing a players marker on the board with given coordinates' do
    it 'Returns the gameboard with the correct spot marked' do
      gameboard = Gameboard.new
      gameboard.place_marker(1, 'X')
      expect(gameboard.board).to eql(['X', 2, 3, 4, 5, 6, 7, 8, 9])
    end
    it 'Returns the gameboard with the correct spot marked' do
      gameboard = Gameboard.new
      gameboard.place_marker(3, 'X')
      expect(gameboard.board).to eql([1, 2, 'X', 4, 5, 6, 7, 8, 9])
    end
    it 'Returns the gameboard with the correct spot marked' do
      gameboard = Gameboard.new
      gameboard.place_marker(9, 'X')
      expect(gameboard.board).to eql([1, 2, 3, 4, 5, 6, 7, 8, 'X'])
    end
  end
end

describe Gameboard do
  describe 'Making sure the method to find a winner actually finds a winner' do
    it 'Spots 1 - 3' do
      gameboard = Gameboard.new
      gameboard.place_marker(1, 'X')
      gameboard.place_marker(2, 'X')
      gameboard.place_marker(3, 'X')
      expect(gameboard.check_for_winner).to eql(true)
    end
  end
end
