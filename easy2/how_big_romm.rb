puts "Enter the length of the room in meters:"
length = gets.to_i
puts "Enter the width of the room in meters:"
width = gets.to_i
area = (length * width).to_f
area_feet = area * 10.7639
puts "The area of the room is #{area} square meters (#{area_feet} square feet)."