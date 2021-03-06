def count(elem, arr)
  count = 0

  i = 0
  while i < arr.length
    if arr[i] == elem
      count = count + 1
    end

    i = i + 1
  end

  count
end

def most_frequent_element(arr)
  most_frequent_elem = arr[0]
  highest_freq = 0

  i = 0
  while i < arr.length
    freq = count(arr[i], arr)

    if freq > highest_freq
      most_frequent_elem = arr[i]
      highest_freq = freq
    end

    i = i + 1
  end
  most_frequent_elem
end
