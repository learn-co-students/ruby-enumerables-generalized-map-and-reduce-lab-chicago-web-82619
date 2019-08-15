# Your Code Here
def map(arr)
  new_arr = []
  arr.each do |i|
    new_arr.push(yield(i))
  end
  new_arr
end

def reduce(arr, start=nil)
  i = 0
  if start
    total = start
  else
    total = arr[0]
    i = 1
  end
  while i < arr.length do
    total = yield(total, arr[i])
    i += 1
  end
  total
end