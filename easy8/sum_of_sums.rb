def sum_of_sums(array)
  result = []
  array.each_index {|index| result << array[0, index + 1].reduce(:+)}
  result.reduce(:+)
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
