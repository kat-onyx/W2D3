require 'rspec'
require 'towers'

RSpec.describe TowersOfHanoi do
  subject(:tower) { TowersOfHanoi.new }

  describe "#initialize" do
    it "should create a board 3 pieces in first index" do
      expect(tower.board).to eq([[3,2,1],[],[]])
    end
  end

  describe "#move" do
    before(:each) { tower.move(0,2) }
    it "should move piece last piece of slot" do
      expect(tower.board[0]).not_to include(1)
    end

    it "should move the piece to desired location" do
      expect(tower.board[2]).to include(1)
    end
  end

  describe "#valid_move?" do
    before(:each) {tower.board = [[3,2],[1],[]]}

    it "it returns true if tower moves into empty slot" do
      expect(tower.valid_move?(0,2)).to eq(true)
    end

    it "returns false if larger tower moves to smaller tower" do
      expect(tower.valid_move?(0,1)).to eq(false)
    end

    it "returns true if smaller tower moves to larger tower" do
      expect(tower.valid_move?(1,0)).to eq(true)
    end

    it "raises an error if tower does not exist" do
      expect(tower.valid_move?(0,5)).to eq(false)
    end
  end

  describe "#render" do
    it "displays the board to the user" do
      expect(tower.render).to be_a(String)
    end
  end


end
