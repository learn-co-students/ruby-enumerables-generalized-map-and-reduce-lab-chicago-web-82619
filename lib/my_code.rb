# Your Code Here
def map(array)
  new_array = []
  x = 0
  while x < array.length do
    new_array << yield(array[x])
    x += 1
  end
  new_array
end

def reduce(source_array, starting_point=nil)
  if starting_point
    accum = starting_point
    i = 0
  else
    accum = source_array[0]
    i = 1
  end
    while i < source_array.length do
      accum = yield(accum, source_array[i])
    i += 1
  end
  accum
end