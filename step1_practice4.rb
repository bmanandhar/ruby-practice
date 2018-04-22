=begin
# Define a method that, given an array of numbers,
returns another array with each of the argument's numbers
multiplied by two. Do not modify the original array.
=end

def array_times_two(arr)

  array_times_two = []
  arr.each {|el| array_times_two << el*2}
  array_times_two

end
# Another method for array_times_two

def array_times_two(arr)
  result = []

  i = 0
  while i < arr.length
    result << arr[i] * 2
    i += 1
  end
  result
end

=begin
# Define a method that, given an array of numbers,
mulitplies each of its elemnets by two.
This SHOULD mutate the original array!
=end
def array_times_two!(arr)

  arr.map! {|el| el*2}
  arr

end
=begin
# Define a method that substitutes all five-letter words in its argument
with "#####" and returns the result. Do not consider punctuation.
# redact_five_letter_words("long longer longest longy") => "long longer longest #####"
=end
def redact_five_letter_words(str)

  # temporary collector array created
  new_arr = []

  # checking length of each word and pushing to array
  str.split(' ').each {|el|

    if el.length != 5
    new_arr << el
    else new_arr << '#####'
    end }

  new_arr.join(' ')
end

=begin
# Define a method that takes an array of pairs (two-element arrays)
and returns the pair with the greatest sum.
# largest_pair([[-4,0],[-2,-1],[-3,2]]) => [-3,2]
# largest_pair([[1,0]]) => [1,0]
=end
# Using helper method
# Main method
def largest_pair(pairs_array)

  sum_pair = 0
  largest = []
  i = 0
  while i < pairs_array.length
    if sum_array(pairs_array[i]) > sum_pair
      sum_pair = sum_array(pairs_array[i])
      largest = pairs_array[i]
    end
    i += 1
  end
  largest
end
# helper method for above Main method 
def sum_array(arr)
  sum = 0
  i = 0
  while i < arr.length
    sum += arr[i]
    i += 1
  end
  sum
end
# Other method

def largest_pair(pairs_array)
  sum, sum_pair, largest = 0, 0, []
  i = 0
  while i < pairs_array.length
    j = 0
    while j < pairs_array[i].length
      sum_pair += pairs_array[i][j]
      j += 1
    end
    if sum_pair > sum
      sum = sum_pair
      largest = pairs_array[i]
    end
    i += 1
  end
  largest
end

# One more method

def largest_pair(pairs_array)

  # assume greatest sum as the sum total of first array
  greatest_sum = pairs_array[0].reduce(0, :+)

  # empty array created
  largest_pair = []

  # iterates through arrays in pairs_array
  pairs_array.each { |arr|

  # sum of each array in pairs_array
  sum_each = arr.reduce(0, :+)

    # comparing each sum
    if sum_each >= greatest_sum
      greatest_sum = sum_each
      largest_pair = arr
    end }

   largest_pair
end

p largest_pair([[2,6], [4,-2], [1,9]])
p largest_pair([[1,0]])
p largest_pair([[-4, 0], [-2, -1], [-3, 2]])
