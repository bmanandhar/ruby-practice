def disemvowel(str)
  vowels = 'aeiou'
  new_str = ""
  i = 0
  while i < str.length
    char = str[i]

    if !(vowels.include?(char.downcase) && i.odd?)
      new_str << char
    end

    i = i + 1 # to keep the index odd
  end

  new_str
end
p disemvowel('This will remove all vowels with index odd')
