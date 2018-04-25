=begin
# Two-Sum

# Define a method, #two_sum, that accepts an array
and a target sum (integer) as arguments.
# The method should return true if any two integers
in the array sum to the target.
# Otherwise, it should return false.
Assume the array will only contain integers.
=end

def two_sum(array, target)
  # your code here

  # each_index method being used to iterate through
  array.each_index {|index|

    # indexed element being exluded to check given condition
    index_out = array[index + 1 .. array.length]

    # result returns as true if condition fulfils
    return true if index_out.include?(target -array[index])
  }

  false
end

puts "------Two Sum------"
puts two_sum([1,2,3,4,5,6], 8) == true
puts two_sum([1,2,3,4,5,6], 18) == false
puts two_sum([1,3,6], 6) == false
puts two_sum([1,8,2,1], 0) == false
