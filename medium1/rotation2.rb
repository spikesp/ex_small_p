def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_rightmost_digits(numbers, number)
  (numbers.to_s[0..-number - 1] + rotate_string(numbers.to_s[-number..-1])).to_i
end

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(735291, 0)

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
