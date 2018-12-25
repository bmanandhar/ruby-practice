def sum_up(arr)
  sum = 0
  arr.each {|i| sum += i}
  sum
end
p sum_up([4, 0, -1, 7])
