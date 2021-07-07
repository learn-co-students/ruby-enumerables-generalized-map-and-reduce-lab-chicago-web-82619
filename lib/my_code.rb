# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i +=1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  i = 0
  sum = 0
  while i < source_array.length
    if source_array[i].is_a? Integer
      sum += yield(source_array[i], starting_point)
      if starting_point > 0
        starting_point = 0
      end
    else
      if !yield(source_array[i], starting_point)
        sum = false
      else
        sum = true
      end
    end
    i += 1
  end
  return sum
end

