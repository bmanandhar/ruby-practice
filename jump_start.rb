#Methods
# EASY

# Write a method that returns its argument converted to a string.
def my_to_s(arg)
  # your code goes here
  arg.to_s
end

# Write a method that returns its argument rounded to the nearest integer.
def my_round(num)
  # your code goes here
  num.round
end

# Write a method that returns the remainder of its two arguments.
# You may use the modulo operator.
def my_modulo(dividend, divisor)
  # your code goes here
  # use of modulo operator

  dividend % divisor
end

# Write a method that returns the least common multiple of its two arguments.
# You may use the lcm method.
def my_lcm(int_one, int_two)
  # your code goes here
  # use of lcm method

  int_one.lcm(int_two)
end

# Write a method that returns its argument converted to a float then
# converted to a string.
def to_stringified_float(int)
  # your code goes here
  # use of methods

  int.to_f.to_s
end

# Write a method that returns the sum of the absolute values of its arguments.
def absolute_sum(num_one, num_two)
  # your code goes here

  num_one.abs + num_two.abs
end

# Write a method that returns the negative value of its argument.
# If the argument is negative, the method simply returns the argument.
# (negative(-1) => -1, negative(1) => -1, negative(0) => 0)
# HINT: use the abs method
def negative(num)
  # your code goes here
  # abosulte value of any number is +ve

  num.abs*-1
end


# MEDIUM

# Write a method that returns the last digit of its argument.
# Assume the argument is an integer.
# HINT: What is the return value of 142 % 10? How about 2 % 10?
def last_digit(int)
  # your code goes here
  # in decimal math, last digit is the modulo when divided the number by 10

  int % 10
end

# Write a method that returns a boolean indicating whether
# the last digit of the method's argument is odd.
# Assume the argument is an integer.
# Bonus points if you use last_digit as a helper method.
def last_digit_odd?(int)
  # your code goes here
  last_digit(int) % 2 == 1
end

# Write a method that returns the greatest common divisor of the last
# digit of each of its arguments. Assume the arguments are integers.
# (gcd_of_last_digits(93, 9) = 3.gcd(9) => 3)
# Bonus points if you use last_digit as a helper method.
def gcd_of_last_digits(int_one, int_two)
  # your code goes here
  last_digit(int_one).gcd(last_digit(int_two))
end

# Write a method that returns the last n digits of its first argument,
# where n is the second argument.
# Assume both arguments are non-zero integers.
# (last_n_digits(1234, 2) => 34)
# HINT: What is the return value of 1234 % 100? How about 4 % 100?
def last_n_digits(num, n)
  # your code goes here
  num % 10**n
end


#HARD

# Write a method that returns the decimal remainder of dividing two floats.
# The decimal remainder is the right side of the decimal point
# (the "fractional part") of the quotient.
# (dec_remainder_of_two_floats(8.0, 5.0) => 0.6 because 8.0 / 5.0 => 1.6)
def dec_remainder_of_two_floats(f_dividend, f_divisor)
  # your code goes here
  f_dividend / f_divisor - (f_dividend / f_divisor).to_i
end

# Write a method that returns the decimal remainder of dividing two integers.
# HINT: Use dec_remainder_of_two_floats as a helper method,
# but don't forget to pass the proper type of argument
def dec_remainder_of_two_integers(i_dividend, i_divisor)
  # your code goes here
  f_dividend = i_dividend.to_f
  f_divisor = i_divisor.to_f
  dec_remainder_of_two_floats(f_dividend, f_divisor)
end

# EXPERT

# Write a method that returns the integer remainder of its two arguments.
# (i.e., what using the modulo operator would return).
# You may not use the modulo operator.
# Assume the arguments are integers.
# HINT: Use dec_remainder_of_two_integers as a helper method
def int_remainder_without_modulo(i_dividend, i_divisor)
  # take the remainder of the integers => .6
  # multiply that remainder by i_divisor => .6*5 = 3.0
  # convert the float to an integer
  x = dec_remainder_of_two_integers(i_dividend, i_divisor)
  y = x * (i_divisor)
  y.to_i
end



#Data Structures
#==============
# EASY

# Write a method that returns a boolean indicating whether an array is in sorted order. Use the equality operator (==), which returns a boolean indicating whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] == ["dog", "cat"] => false
def in_order?(arr)
  # your code goes here

  arr == arr.sort
end

# MEDIUM

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  # your code goes here

  arr.max - arr.min
end

# Write a method that returns an array of the digits of a non-negative integer in descending order and as strings, e.g., descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  # your code goes here

  int.to_s.split("").sort.reverse
end

#NB: Writing the following 3 methods will require the use of techniques found in the "Logic and Control Flow" section of the curriculum.  Feel free to come back to these problems after reading that section.

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  # your code goes here
  vowels = ['a', 'e', 'i', 'o', 'u']
  num_vowels = 0
  str = str.downcase

  i = 0
  while i < str.length
    if vowels.include?(str[i])
      num_vowels += 1
    end
    i += 1
  end
  num_vowels

end


# Write a method that returns its argument with all its vowels removed
def devowel(str)
  # your code goes here
  vowels = ['a','A','e','E','i','I','o','O','u','U']
  temp = ""

  i = 0
  while i < str.length
    if vowels.include?(str[i]) == false
      temp << str[i]
    end
    i += 1
  end

  temp
end

# Write a method that returns a boolean indicating whether a string has repeating letters. Capital letters count as repeats of lowercase ones, e.g., repeating_letters?("Aa") => true
  def repeating_letters?(str)
    # your code goes here
  str = str.downcase.split("")
  temp = ""
  i = 0
  while i < str.length
    if temp.include?(str[i])
      return true
    else
      temp << str[i]
    end
    i += 1
  end
  false
end


# HARD

# Write a method that converts an array of ten integers into a phone number in the format "(123) 456-7890".
def to_phone_number(arr)
  # your code goes here
  arr = arr.join

  "(#{arr[0..2]}) #{arr[3..5]}-#{arr[6..9]}"
end

# Write a method that returns the range of a string of comma-separated integers, e.g., str_range("4,1,8") #=> 7
def str_range(str)
  # your code goes here
  x = str.split(",").sort
  x[-1].to_i - x[0].to_i

end

#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of arrays. offset=1 ensures that the value of offset is 1 if no argument is provided.
# HINT: use the take(num) and drop(num) methods. You won't need much code, but the solution is tricky!
def my_rotate(arr, offset=1)
  # your code goes here
  # take first offset elements and append to end of array
  shift = offset % arr.length
  arr.drop(shift) + arr.take(shift)
end
