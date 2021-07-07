# Your Code Here
def map(source_array)
  array = []
  i = 0
  while i < source_array.length
    array.push(yield(source_array[i]))
    i += 1
  end
  array
end

def reduce(source_array, starting_value=nil)
  if starting_value
    accum = starting_value
    i = 0
  else
    accum = source_array[0]
    i = 1
  end
  while i < source_array.length
    accum = yield(accum, source_array[i])
    i += 1
  end
  accum
end