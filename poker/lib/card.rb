class Card
  attr_reader :value, :suit, :color

  def initialize(value, suit, color)
    @value = value
    @suit = suit
    @color = color
  end
end
