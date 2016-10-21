def sum_square_difference(num)
  sum_square = ((1..num).to_a.reduce(:+)) ** 2
  square_sum_arr = []
  (1..num).to_a.each { |num| square_sum_arr << num ** 2 }
  square_sum = square_sum_arr.reduce(:+)
  sum_square - square_sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# rubyish solution
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value ** 2
  end

  sum **2 -sum_of_squares
end
