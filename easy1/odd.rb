def is_odd?(number)
  if number.abs % 2 != 0 && number.to_i == number
    puts true
  else
    puts false
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(7.1)  # => false
puts is_odd?(-5.0) # => true