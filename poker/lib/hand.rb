class Hand
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def calculate_hand

  end

  def pairs
    hash = Hash.new(0)

    self.cards.each do |card|
      hash[card.value] += 1
    end

    hash.sort_by {|k, v| value }.last
  end
end
