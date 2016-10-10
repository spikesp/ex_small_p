# def average(array)
#   sum = 0
#   array.each { |num| sum += num}
#   sum / array.size
# end

def average(numbers)
  sum = numbers.reduce(:+)
  sum / numbers.count
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40



