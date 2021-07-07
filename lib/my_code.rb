def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new << yield(source_array[i])
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  result = source_array[0]
  
  if(source_array[0].class == Integer)
    result = starting_point == 0 ? 0 : starting_point
  end
  
  i = 0
  while i < source_array.length do
    result = yield(result, source_array[i])
    i += 1
  end
  return result
end
