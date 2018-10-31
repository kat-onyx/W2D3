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
end
