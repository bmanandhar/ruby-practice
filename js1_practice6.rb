=begin
# Define a method that capitalizes each word
of its argument and returns the resulting string.
=end

def capitalize_each_word(str)

  str.split(" ").map! {|word| word.capitalize}.join(" ")
end

def capitalize_each_word(str)
  capitalized_arr = []
  str.split(" ").each {|word| capitalized_arr << word.capitalize}

  capitalized_arr.join(" ")
end

=begin
# Define a method that takes an array of integers
and returns an array of the square of each.
# compute_squares([1, 2, 3, 4]) => [1, 4, 9, 16]
# compute_squares([]) => []
=end

def compute_squares(arr)

  # empty array created
  compute_squares = []

  # iterate using each loop method
  arr.each {|el| compute_squares << el**2}

  # returns result
  compute_squares
end

=begin
# Define a method that returns a boolean indicating
whether any two elements in the argument array sum to 0.
# two_sum_to_zero?([4, 2, 6]) => false
# two_sum_to_zero?([-2, 5, 12, -3, 2]) => true
=end

def two_sum_to_zero?(arr)

  #
  arr.each_index {|index|
    index_out = arr.slice(0, index) +arr.slice(index +1, arr.length)

    if index_out.include?(-arr[index])
      return true
    end
    }
 false
end

# Define a method that returns the longest word in its argument.
def longest_word(str)

  # temporary variables created
  word_length = 0
  longest_word = ""

  # checks length of each word
  str.split(" ").each {|word|

  if word.length >= word_length
    word_length = word.length
    longest_word = word
  end

  }

  longest_word
end
