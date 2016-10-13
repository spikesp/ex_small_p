def substrings(string)
  result = []
  0.upto(string.size - 1) do |count|
    0.upto(string.size - count -1 ) { |index| result << string[count, index + 1]}
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]