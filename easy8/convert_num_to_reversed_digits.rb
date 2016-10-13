def reversed_number(integer)
  integer.to_s.chars.reverse!.join.to_i
end

p reversed_number(12345)
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1