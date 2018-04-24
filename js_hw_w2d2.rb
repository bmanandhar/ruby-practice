def cats_in_hats
  # your code here
  #hash-table initialized with status "off"
  cats_hats = Hash.new
  (1..100).each {|cat_num| cats_hats[cat_num] = "off"}
  #iteration for hat status "on"/"off"
  visit = 1
  while visit < 101
    cats_hats.each {|k, v|

      if k % visit == 0 && v == "off"
        cats_hats[k] = "on"

      elsif k % visit == 0 && v == "on"
        cats_hats[k] = "off"

      end
    }

    visit += 1
  end
  #select key with value only "on"
  cats_hats.select {|k, v| v == "on"}.keys
end

 p cats_in_hats

puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
