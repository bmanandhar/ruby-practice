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
def largest_pair(pairs_array)

  # sum of the first array in pairs_array
  sum = pairs_array[0][0] + pairs_array[0][1]

  # empty array created
  largest_pair = []
  pairs_array.each {|arr|

  # sum of each array in pairs_array
  sum_each = arr[0] + arr[1]

    # comparing each sum
    if sum_each >= sum
      sum = sum_each
      largest_pair = arr
    end
   }

   largest_pair
end
