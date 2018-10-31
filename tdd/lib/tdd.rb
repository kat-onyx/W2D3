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
