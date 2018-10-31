require_relative 'card'

class Deck
  attr_accessor :deck

  def self.generate_deck
    deck = []
    #red
    Card::SUITS[0..1].each do |suit|
        Card::VALUE.each do |value|
          deck << Card.new(value, suit, :red)
        end
    end

    #black
    Card::SUITS[2..-1].each do |suit|
      Card::VALUE.each do |value|
        deck << Card.new(value, suit, :black)
      end
    end

    deck.shuffle!
  end

  def initialize
    @deck = Deck.generate_deck
  end

  def deal_card
    @deck.shift
  end

end
