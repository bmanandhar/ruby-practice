# Define a method that reverses the digits of its argument and returns the resulting number.
# reverse_digits(1738) => 8371
def reverse_digits(int)

  reverse_digits = ""

  # int converted to string and split into array
  x = int.to_s.split("")

  # iterate array from the last item and collect
  for i in 0 ... x.length
    reverse_digits << x[-i -1]
  end

  # string converted into reversed integer
  reverse_digits.to_i
end

=begin
# Define a method, #pair_product?, that accepts two arguments:
an array of integers and a target_product (an integer).
The method returns a boolean indicating whether any pair of
elements in the array multiplied together equals that product.
You cannot multiply an element by itself. An element on its own
is not a product.
# pair_product?([3, 1, 5], 15) => true
=end

def pair_product?(arr, target_product)

	# iterate through the array
		arr.each_index do |index|

	# exclude current index
			index_out = arr[0...index] + arr[index+1..-1]

	# for each index, check if target_product / element exists in array
	  return true if index_out.include?(target_product/arr[index])

		end
	false
end
#===Another method for pair_product

def pair_product?(arr, target_product)

  i = 0
  while i < arr.length

    j = i+1
    while j < arr.length

      if arr[i]*arr[j] == target_product
        return true
      else
        return false
      end

      j += 1
    end

    i += 1
  end
end

=begin
# Define a method, #slice_between_vowels(word),
that accepts a string as an argument.
Your method should return the slice of
the word between the first and last vowels
of that word. Return an empty string if the word
has less than 2 vowels.

# slice_between_vowels("serendipity") => "rendip"
# slice_between_vowels("train") => ""
# slice_between_vowels("dog") => ""
=end

def slice_between_vowels(word)

  # array of vowels created
  vowels = ["a","e","i","o","u"]

  # indices created to iterate from left and right
  left_i, right_i = 0, -1

  # checks for first vowel on left
  until vowels.include?(word[left_i].downcase)
    left_i += 1
  end

  # checks for first vowel on right
  until vowels.include?(word[right_i].downcase)
    right_i -= 1
  end

  # forms new word between first and last vowels
  word[left_i +1...right_i]
end
