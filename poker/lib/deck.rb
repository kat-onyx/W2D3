require_relative 'card'

class Deck
  attr_accessor :deck

  VALUE = (2..14).to_a
  SUITS = [:heart, :diamond, :clubs, :spade]
  COLOR = [:red, :black]

  def initialize
    @deck = []
    generate_deck
  end

  def generate_deck
    #red
    SUITS[0..1].each do |suit|
        VALUE.each do |value|
          @deck << Card.new(value, suit, :red)
        end
    end

    #black
    SUITS[2..-1].each do |suit|
      VALUE.each do |value|
        @deck << Card.new(value, suit, :black)
      end
    end

    @deck.shuffle!
  end
end
