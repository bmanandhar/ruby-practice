def fibonacci(n)
  if n == 0
    return []
  elsif n == 1
    return [0]
  end

  fibs = [0,1]
  while fibs.length < n
    fibs << fibs[-2] + fibs[-1]
  end

  fibs
end
