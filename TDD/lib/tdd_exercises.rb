require 'byebug'


class Array

  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end


  def two_sum
    res = []
    (0...length-1).each do |i|
      (i+1..length-1).each do |j|
        res << [i, j] if self[i] + self[j] == 0
      end
    end
    res
  end

  def my_transpose
    res = []
    (0..length-1).each do |i|
      temp = []
      (0..self[i].length-1).each do |j|
        temp << self[j][i]
      end
      res << temp
    end
    return res
  end

  def stock_picker
    # debugger
    result = []
    (0...length-1).each do |i|
      max_idx = i+1
      (i + 1..length-1).each do |j|
        max_idx = j if self[j] > self[max_idx]
      end
      result << [self[max_idx] - self[i], max_idx]
    end
    #[[-10, 3], [60, 3], [50, 3], [-20, 4], [-50, 5]]
    highest = result[0][0]
    index = 0
    index2 = 0
    result.each_with_index do |arr, i|
       if arr[0] > highest
         highest = arr[0]
         index2 = arr[1]
         index = i
       end
    end
    [index, index2]
  end



end
