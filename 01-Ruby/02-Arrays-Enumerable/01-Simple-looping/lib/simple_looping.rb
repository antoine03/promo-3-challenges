def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
  count = min
  sum = 0
while count <= max
  sum += count
  count += 1
end
  sum
end


def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  sum = 0
  for i in (min..max)
    sum = sum + i
  end
  sum
end

def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
  raise(ArgumentError) if min > max
  sum = min
  if min == max
    return max
  else
    min = min + 1
    sum = sum + sum_recursive(min,max)
  end
end


