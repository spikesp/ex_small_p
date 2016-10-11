def oddities(array)
  odd_list = []
  array.each_index { |index|  odd_list << array[index] if index.even?}
  p odd_list
end

oddities([2, 3, 4, 5, 6])
oddities(['abc', 'def'])
oddities([123])
oddities([])