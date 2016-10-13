def halvsies(array)
  result = []
  if array.size.even?
    result[0] = array[0, array.size / 2]
    result[1] = array[array.size / 2, array.size] 
  else
    result[0] = array[0, array.size / 2 + 1]
    result[1] = array[array.size / 2 + 1, array.size]
  end
  result
end

p halvsies([1, 2, 3, 4])

p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])