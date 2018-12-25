=begin
# Define a method that returns a boolean
indicating whether its argument is a palindrome.
=end

def palindrome?(str)

  left = ""

  # checks string length even/odd
  if str.length % 2 == 1
    left = str.length/2
  else
    left = str.length/2 +1
  end

    str[0 ... left].downcase == str[left +1 .. -1].downcase.reverse

#other method
def palindrome?(str)
  half = nil

  if str.length % 2 == 1
    half = str.length/2
  else half = str.length/2 +1
  end

  i, left_half, right_half = 0, "", ""

  while i < half
    left_half << str[i]
    right_half << str[-i -1]
    i += 1
  end
  left_half == right_half
end

p palindrome?("madam") == true
p palindrome?("revolver") == false
p palindrome?("rotator") == true
=begin
# Define a method, boolean_to_binary(arr),
that accepts an array of booleans as an argument.
Your method should convert the array into a string of
1's (for true values) and 0's (for false values)
and return the result.
# boolean_to_binary([true]) => "1"
# boolean_to_binary([true, false, true]) => "101"
=end

def boolean_to_binary(arr)

  binary = ""

  # iteration each method
  arr.each {|bool|
    if bool == true

      # bool true to binary 1
      binary << "1"
    else

      # bool false to binary 0
      binary << "0"
    end }

  binary
end

# other method

def boolean_to_binary(arr)

  i = 0
  while i < arr.length
    if arr[i] == true
      arr[i] = "1"
    elsif arr[i] == false
    arr[i] = "0"
    end
    i += 1
  end
  arr.join
end
boolean_to_binary([true, false, true])

=begin
# Define a method that returns the third-largest element
in an array. Assume the argument has at least three elements.
# third_greatest([5, 9, 3, 7, 7, 2, 10]) == 7
=end


def third_largest(arr)

  # first, second and third largest
  i, ii, iii = nil, nil, nil

  # each iteration method
  arr.each {|n|
    if i == nil
      i = n

    elsif n >= i
      i, ii, iii = n, i, ii

    elsif n >= ii
      ii, iii = n, ii

    else iii = n
    end
  }

  # returns third largest
  iii
end

=begin
# Define a method that takes a number of minutes
as its argument and returns a string formatted HH:MM.
Assume the number of hours is always less than 99.
# time_conversion(90) => "01:30"
# time_conversion(0) => "00:00"
=end

def time_conversion(mins)

  [mins /60, mins %60].map {|t| t.to_s.rjust(2, '0')}.join(':')
end
