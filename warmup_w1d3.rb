# Rubyify
# ----------------------------------------
# Define a method that turns regular sentences into (really bad and
# super long) ruby method names.

def rubyify(sentence)
  #sentence first is downcased, split by space, then joined by underscore to convert into a new string
  sentence.downcase!.split(" ").join("_")
end

puts "---------Rubyify----------"
puts rubyify("Leave the gun take the cannoli") == "leave_the_gun_take_the_cannoli"
puts rubyify("Driver roll up the partition please") == "driver_roll_up_the_partition_please"
puts rubyify("Wanna get Cheeseboard pizza?") == "wanna_get_cheeseboard_pizza?"

# ----------------- Switch Roles!

# Find Factors
# ----------------------------------------
# Define a method, #find_factors(n, possible_factors), that accepts two arguments:
# an integer, n, and an array of integers, possible_factors. Find all the elements
# in possible_factors that are factors of n.

def find_factors(n, possible_factors)

  #created an enpty array
  find_factors = []

  # using a for loop to iterate
  for i in 0 ... possible_factors.length

    # checking if the element is a factor of n
    if n % possible_factors[i] == 0

      # collects element if factor
      find_factors << possible_factors[i]
    end
  end
  find_factors
end

puts "---------Find Factors----------"
puts find_factors(33, [1, 10, 11, 15, 18, 20]) == [1, 11]
puts find_factors(81, [2, 3, 9, 16, 51, 53]) == [3, 9]
puts find_factors(17, [2, 3, 4, 5, 6, 7, 8, 9]) == []


def find_factors(n, possible_factors)
  find_factors = []

  i = 0
  while i < possible_factors.length
    if n % possible_factors[i] == 0
      find_factors << possible_factors[i]
    end
  i += 1
  end

  find_factors
end

puts "---------Find Factors----------"
puts find_factors(33, [1, 10, 11, 15, 18, 20]) == [1, 11]
puts find_factors(81, [2, 3, 9, 16, 51, 53]) == [3, 9]
puts find_factors(17, [2, 3, 4, 5, 6, 7, 8, 9]) == []
