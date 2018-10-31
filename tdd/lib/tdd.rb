def remove_dups(array)
  array.uniq
end

def two_sum(array)
  result = []

  (0..array.length - 1).each do |left|
    (left + 1..array.length - 1).each do |right|
      result << [left, right] if array[left] + array[right] == 0
    end
  end
  result
end

def my_transpose(array)
  result = Array.new(3) { Array.new [] }

  (0..array.length - 1).each do |i|
    array.each do |arr|
      result[i] << arr[i]
    end
  end
  result
end

def stock_picker(prices)
  days = []
  (0..prices.length - 1).each do |first|
    (first + 1..prices.length - 1).each do |second|
      greatest_return = 0
      if (prices[first] - prices[second]).abs > greatest_return
        greatest_return = (prices[first] - prices[second]).abs
        days = [first, second]
      end
    end
  end
  days
end
