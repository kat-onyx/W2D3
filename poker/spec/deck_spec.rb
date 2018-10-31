require 'rspec'
require 'deck'


RSpec.describe Deck do
  subject(:test_deck) { Deck.new }

  describe "#generate_deck" do
    it "generates a 52 card deck" do
      expect(test_deck.deck.length).to eq(52)
    end

    it "deck includes at least one of each suit" do
      spades = test_deck.deck.select {|card| card.suit == :spade }
      expect(spades.count).to eq(13)
    end

    it "deck includes at least one of each suit" do
      color = test_deck.deck.select {|card| card.color == :red }
      expect(color.count).to eq(26)
    end

    it "deck includes at least one of each suit" do
      value = test_deck.deck.select {|card| card.value == 14 }
      expect(value.count).to eq(4)
    end
  end
end
