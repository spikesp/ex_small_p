def running_total(array)
  return_array = []
  array.each_index do |index|
    return_array[index] = array[0..index].reduce(:+)
  end
  return_array
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end