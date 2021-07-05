# Your Code Here

def map(source_array)  
  result = []
  i=0
  
  while i<source_array.length do
    result.push(yield(source_array[i]))
    i+= 1
  end
  return result
end

def reduce(source_array, starting_value = 0)

result = starting_value

i=0

while i<source_array.length do
  
  if (source_array[i] == !!source_array[i])
    result = (yield(!!result,source_array[i]))
  else
    result = (yield(result,source_array[i]))
  end
    i+= 1
  end
return result
end