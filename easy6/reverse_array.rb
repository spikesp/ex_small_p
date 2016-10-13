def reverse_array(array)
  temp = []
  array.size.times do 
    temp << array.pop
  end
  array.push(temp).flatten!
end

list = [1,2,3,4]
result = reverse_array(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse_array(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse_array(list) # => ["abc"]
p list == ["abc"]


