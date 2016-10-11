numbers = []
order = %w(1st 2nd 3rd 4th 5th)
(0..4).each do |num|
  puts "Enter the #{order[num]} number:"
  numbers[num] = gets.to_i
end

puts "Enter the last number:"
last_num = gets.to_i

if numbers.include? (last_num)
  puts "The number #{last_num} appears in #{numbers}"
else
  puts "The number #{last_num} does not appear in #{numbers}"
end