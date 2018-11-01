require 'rspec'
require 'hand'

RSpec.describe Hand do
  subject(:hand) { Hand.new }

  describe "#initialize" do
    it "starts with an empty hand" do
      expect(hand.cards).to be_empty
    end
  end

  describe "#calculate_hand" do
    let(:two_kind) {double('two_kind', value: 14)}
    
    it "calculates a value of a pair" do
      2.times { hand.cards << two_kind }
      expect(hand.calculate_hand).to eq(1)
    end
  end
end
