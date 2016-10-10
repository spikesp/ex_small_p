# def sum(number)
#   number.to_s.split(//).collect {|num| num.to_i}.reduce(:+)
# end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45