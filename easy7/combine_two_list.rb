def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#

def interleave(arr1, arr2)
  result = []
  arr1.each_with_index do |element, index|
    result << element << arr2[index]
  end
  result
end