class Card
  attr_reader :value, :suit, :color

  VALUE = (2..14).to_a
  SUITS = [:heart, :diamond, :clubs, :spade]
  COLOR = [:red, :black]
  
  def initialize(value, suit, color)
    @value = value
    @suit = suit
    @color = color
  end
end
