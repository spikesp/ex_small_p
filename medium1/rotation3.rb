def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# def max_rotation(number)
#   rotate_rightmost_digits(number, )

def max_rotation(number)
  n = number.to_s.size
  result = []
  if n == 1
    return number
  else
    while n != 1
      result = rotate_rightmost_digits(number, n)
      n -= 1
      number = result
    end
  end
  result
end

p max_rotation(735291)
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

