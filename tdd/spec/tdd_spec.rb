require 'rspec'
require 'tdd'
RSpec.describe do
  describe "#remove_dupes" do
    subject(:array) {Array.new([1, 2, 1, 3, 3])}

    it "returns uniq elements in the order in which they appear" do
      expect(remove_dups(array)).to eq(array.uniq)
    end
  end

  describe "#two_sum" do
    subject(:array) {Array.new([-1, 0, 2, -2, 1])}

    it "finds all pairs of positions where elements at those positions sum to zero" do
      expect(two_sum(array)).to eq([[0, 4], [2, 3]])
    end
  end

  describe "my_transpose" do
    subject(:array) {Array.new([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ])}
    answer =  [[0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]]

    it "converts between row and column representations" do
      expect(my_transpose(array)).to eq(answer)
    end
  end

  describe "#stock_picker" do
    subject(:prices) {Array.new([5, 10, 8, 4, 12])}

    it "it outputs the most profitable pair of days on which to buy the stock" do
      expect(stock_picker(prices)).to eq([3,4])
    end

    it "cannot sell stock before buying it" do
      sell = stock_picker(prices).last
      expect(stock_picker(prices).first).to be < sell
    end
  end

  
end
