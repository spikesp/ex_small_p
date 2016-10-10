def stringy(number)
  base = '10'
  plus ='1'
  re_str = []
  base_time = number / 2
  if number.even?
    base_time.times do | i|
      re_str << base  
    end
    re_str.join
  else
    base_time.times do | i|
      re_str << base
    end
    re_str.join + plus
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# smarter solution

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end