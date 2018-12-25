# Define a method that returns the sum of all the non-negative integers up to and including its argument.
# sum_to(3) => 6
def sum_to(int)

    sum = 0

  if int >= 0
    for i in 1 .. int
      sum += i
    end
  else
    return false
  end
    sum

end

# A magic number is a number whose digits, when added together, sum to 7, e.g., 34. Define a method that returns an array of the first n magic numbers. You may wish to write a helper method that returns a boolean indicating whether a number is magic.
# magic_numbers(3) => [7, 16, 25]

def magic_numbers(n)

  magic_numbers = []
  i = 7
  while magic_numbers.length < n
    if magic_number?(i)
      magic_numbers << i
    end
  i += 1
  end
  magic_numbers
end

def magic_number?(n)
  n_split = n.to_s.split("")
  sum = 0
  for i in 0 .. n_split.length
    sum += n_split[i].to_i
  end
  sum == 7
end

=begin
Define a method that given an array,
returns another array of only the unique
elements from the first. Do not use the
built-in uniq method.
# uniq([5, 5, 5, 5]) => [5]
# uniq([1, 2, 1, 3, 3]) => [1, 2, 3]
=end

def uniq(arr)
  uniq = []
  arr.each {|x| if uniq.include?(x) == false
    uniq << x
  end }
  uniq
end

=begin
Define a method that receives two arrays as arguments and
returns a new array of arguments unique among both arrays
(but not necessarily within the array it occurs).
Maintain original (intra- and inter-array) order.
#all_uniqs([1, 1, 3, 6], [2, 3, 6]) => [1, 2]
# all_uniqs([1, 2, 3], [1, 2, 3]) => []
=end

def all_uniqs(arr1, arr2)
  # empty array to collect elements
  all_uniqs = []

  # checks for elements in arr1
  arr1.each_index do |index|
    all_uniqs << arr1[index] if all_uniqs.include?(arr1[index]) == false && arr2.include?(arr1[index]) == false
  end

  # checks for elements in arr2
  arr2.each_index do |index|
    all_uniqs << arr2[index] if all_uniqs.include?(arr2[index]) == false && arr1.include?(arr2[index]) == false
  end

  # returns the result
  all_uniqs.sort
end
