def reverse(array)
  reverse_arr = []
  num = -1
  while num >= -array.size
    reverse_arr << array[num]
    num -= 1
  end
  reverse_arr
end

p reverse([1,2,3,4])
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
