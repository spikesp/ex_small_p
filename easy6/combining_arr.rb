def merge(arr1, arr2)
  arr1.concat(arr2).uniq.flatten
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# In this exercise we utilize the Ruby method Array#|. 
# This is a method that gives the set union of two arrays, so the result contains no duplicates. 
# It works perfectly for our merge method.
#  The union part of this method means that we get back all the elements that both array_1 and array_2 might contain, but without duplicates.
def merge(array_1, array_2)
  array_1 | array_2
end