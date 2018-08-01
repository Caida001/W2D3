require 'rspec'
require 'towers_of_hanoi'

describe Towers do

  subject(:game) {Towers.new}

  describe "#initialize" do

    it "should return default board" do
      expect(game.board).to eq([[3,2,1],[],[]])
    end

    it "the last two nested arrays should be empty" do
      expect(game.board[1] && game.board[2]).to be_empty
    end

  end

  describe "#move" do
    before do
      game.move(0,1)
      game.move(0,2)
    end

    it "should move discs correctly" do
      expect(game.board).to eq([[3],[1],[2]])
    end

    it "should raise error if the last element in the start position
      if greater than the last element in the end position" do
        expect{ game.move(0,1) }.to raise_error(InvalidMove)
    end

    it "should raise error if the start position is empty" do
      game.move(1,2)
      expect{ game.move(1,2) }.to raise_error(InvalidMove)
    end

    it "should raise error if the start position or the end position
      is outside of the board" do
      expect{ game.move(3,4) }.to raise_error(InvalidMove)
    end

  end

  describe "won?" do
    before do
      game.move(0,2)
      game.move(0,1)
      game.move(2,1)
      game.move(0,2)
      game.move(1,0)
      game.move(1,2)
      game.move(0,2)
    end


    it "should return true if the game is won" do
      expect(game.won?).to be(true)
    end

    it "should return false if the game is not over" do
      game.move(2,1)
      expect(game.won?).to be(false)
    end

    it "the final board should look like" do
      expect(game.board).to eq([[],[],[3,2,1]])
    end
  end

end
