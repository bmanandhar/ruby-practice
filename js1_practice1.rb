#Step One Practice Assessment

# A "slippery number" has 3 as a factor or has 5 as a factor, but not both. 6 is a slippery, but 30 is not. Define a method that returns a boolean indicating whether its argument is slippery.
def is_slippery?(n)

  if n % 15 == 0
    false
  elsif n % 3 == 0 || n % 5 == 0
    true
  end

end

# Write a method that, given an integer n, returns an array of the first n slippery numbers.
# slippery_numbers(7) => [3, 5, 6, 9, 10, 12, 18]
def slippery_numbers(n)
  array, num = [], 3
  while array.length < n
    array << num if is_slippery?(num)
    num += 1
  end
  array
end

# Define a method, #e_words(str), that accepts a string as an argument. Your method return the number of words in the string that end with the letter "e".
# e_words("tree") => 1
# e_words("Let be be finale of seem.") => 3
def e_words(str)
  count = 0
  str.split(" ").each {|w| w[-1] == 'e' ? count += 1: next}
  count
end

# The Fibonacci Sequence follows a simple rule: the next number in the sequence is the sum of the previous two. The sequence begins with [0, 1]. One computes the third number by summing the first and  second (0 + 1 == 1), yielding [0, 1, 1], one computes the fourth number by summing the second and the third, yielding [0, 1, 1, 2], and so on.
# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(6) => [0, 1, 1, 2, 3, 5]
def fibs(n)

  fibs = [0, 1]
  until n == fibs.length
    fibs << fibs[-1] + fibs[-2]
  end
  fibs

end
