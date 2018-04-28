# all?, none?, any?, each
def all_even?(arr)
  arr.each {|int| return false if int.odd?}
true
end
p all_even?([2, 4,-4, 0]) == true
p all_even?([1, 4, 0, 9, -2]) == false
#===

def all_even?(arr)
  arr.all? {|int| int.even?}
end
p all_even?([2,-4, 12]) == true
p all_even?([-1, 0, 8, 2]) == false
#===

def none_even?(arr)
  arr.none?{|int| int.even?}
end
p none_even?([1, 3, -5]) == true
p none_even?([4, -8, 0, 2]) == false

# map
simpleton = [1, 2, 3]
simpleton.map {|int| int*2} #=>[2, 4, 6]
p simpleton == [1, 2, 3] #=>true

#please note following
less_simpleton = [1, 2, 3]
less_simpleton.map! {|int| int**2} #=> [1, 4, 9]
p less_simpleton

# count
[1, 2, 3, 4, 5].count #=> 5
[1, 2, 3, 4, 5].count(2) #=> 1
[1, 2, 3, 4, 5].count{|int| int.odd?} #=> 3

# select
array_of_terms = ["The blab of the pave", "tires of carts",
      "sluff of boot-soles", "talk of the promenaders",
      "The heavy omnibus", 'the driver with his interrogating thumb']

  array_of_terms.select {|t| t.length > 20} #=> ["talk of the promenaders", "the driver with his interrogating thumb"]
  array_of_terms.reject {|t| t.length > 20} #=> ["The blab of the pave", "tires of carts", "sluff of boot-soles",
                                            #    "The heavy omnibus"]
  # WELCOME TO THE DANGER ZONE
  array_of_terms.select! {|t| t.length > 20} #=> ["talk of the promenaders", "the driver with his interrogating thumb"]
  array_of_terms #=> ["talk of the promenaders", "the driver with his interrogating thumb"]

# sort_by
def words_by_length(str)
  words = str.split
  words.sort_by {|word| word.length}
end

poor_gregor = "As Gregor Samsa awoke one morning from uneasy dreams he found
              himself transformed in his bed into a gigantic insect"

words_by_length(poor_gregor) #=> ["a", "As", "he", "in", "his", "one", "bed",
                             #    "into", "from", "found", "Samsa", "awoke",
                             #    "insect", "Gregor", "dreams", "uneasy",
                             #    "morning", "himself", "gigantic", "transformed"]

 #each_with_index and with_index
 three_lines = ["The", "mind", "has", "shown", "itself", "at", "times",
  "Too", "much", "the", "baked", "and", "labeled", "dough",
  "Divided", "by", "accepted", "multitudes."]

three_lines.each_with_index do |word, idx| #the parameters are comma separated and in order
  if word == word.capitalize
    puts "The word at index #{idx} must be the start of a new line!"
  end
end

back_to_the_numbers_game = [1, 2, 3]
back_to_the_numbers_game.map.with_index {|num, i| num - i} #=> [1, 1, 1]

"abcd".each_char.with_index {|ch, i| puts "#{ch} is letter number #{i + 1} in the alphabet!"} #=> "abcd" (returns receiver)
