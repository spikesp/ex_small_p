def merge(array1, array2)
  result = []
  index2 = 0
  array1.each do |num|
    while index2 < array2.size && array2[index2] <= num
      result << array2[index2]
      index2 += 1
    end
    result << num
  end
  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) 
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]     


    
