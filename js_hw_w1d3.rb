
# Wild Sum

# Define a method, #wild_sum(n) that sums all the numbers less than n that are:
#   - Divisible by 2 or divisible by 3
#   - Not divisible by both 2 and 3

# ex: wild_sum(16) ==> 2 + 3 + 4 + 8 + 9 + 10 + 14 + 15 ==> 65

def wild_sum(n)
  # your code here
  wild_sum = 0

  for i in 1 ... n

    if i % 2 == 0 && i % 3 != 0
      wild_sum += i

    elsif i % 3 == 0 && i % 2 != 0
      wild_sum += i
    end
  end
  wild_sum

end
puts "------Wild Sum------"
puts wild_sum(0) == 0
puts wild_sum(2) == 0
puts wild_sum(3) == 2
puts wild_sum(7) == 9

###
def find_factors(n, possible_factors)
factors = []

  i = 0
  while i < possible_factors.length

    possible = possible_factors[i]
    factors << possible if (n % possible).zero?

    i += 1
  end

  factors
end
p "-------possible_factor------"
p find_factors(80, [2,5,4,3,10]) == [2, 5, 4, 10]
