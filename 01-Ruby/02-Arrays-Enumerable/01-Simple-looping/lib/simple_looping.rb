def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  i = min
  k = 0
  while i <= max
    k = i + k
    i = i + 1
  end
  return k
end

puts sum_with_while(1,5)


def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  k = 0
  for i in (min..max)
    k = i + k
  end
  return k
end

puts sum_with_for(1,5)

def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself

end

