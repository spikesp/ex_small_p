puts "Please enter an integer greater than 0:"
num = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

case operator
when 's'
  puts sum = (1..num).reduce(:+)
when 'p'
  puts product = (1..num).reduce(:*)
end
