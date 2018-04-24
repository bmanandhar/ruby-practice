def cats_in_hats
  #hash-table initialized with status "off"
  cats_hats = Hash.new
  (1..100).each {|cat_num| cats_hats[cat_num] = "off"}
  #iteration for hat status "on"/"off"
  visit = 1
  while visit < 101
    cats_hats.each {|nth, on_off|

      if nth % visit == 0 && on_off == "off"
        cats_hats[nth] = "on"

      elsif nth % visit == 0 && on_off == "on"
        cats_hats[nth] = "off"
      end
    }

    visit += 1
  end

  cats_hats.select {|key, value| value == "on"}.keys
end
cats_in_hats

puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
