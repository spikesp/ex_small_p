def rotate_array(array)
  rotated = array[1, array.size - 1]
  rotated << array.first
  rotated
end

p rotate_array([7, 3, 5, 2, 9, 1])

p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]

## oneline solution

def rotate_array(array)
  array[1..-1] + [array[0]]
end

