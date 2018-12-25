#slice_between_vowels s1a3

def slice_between_vowels(word)

  vowels = "aeiou"
  idx_l, idx_r = 0, -1
  until vowels.include?(word[idx_l].downcase)
    idx_l += 1
  end
  until vowels.include?(word[idx_r].downcase)
    idx_r -= 1
  end
  word[idx_l + 1...idx_r]
end

# Method- 2
def slice_between_vowels(word)
  vowels = "aeiou"
  first, last = nil, nil
  i = 0
  while i < word.length
      if first == nil && vowels.include?(word[i]) == true
        first = i + 1
      elsif vowels.include?(word[i]) == true
        last = i
      end
    i += 1
  end
  word[first, last - first]
end
p slice_between_vowels("helicopter") == "licopt"
p slice_between_vowels("helsinki") == "lsink"
p slice_between_vowels("eye") == "y"
p slice_between_vowels("abcde") == "bcd"
