def star(odd_interger)
  odd_interger.to_i
  if odd_interger.odd? == false
    return false
  else
  space = ' '
  star = '*'

  space_num1 = (odd_interger - 1) / 2 - 1
    0.upto(space_num1) do |num|
    puts "#{space*num}#{star}#{space*space_num1}#{star}#{space*space_num1}#{star}"
    space_num1 -= 1
    end
  end

  puts "#{star*odd_interger}"
  space_num1 = (odd_interger - 1) / 2 - 1
  space_num2 = 0
    space_num1.downto(0) do |num|
    puts "#{space*num}#{star}#{space*space_num2}#{star}#{space*space_num2}#{star}"
    space_num2 += 1
  end
end

star(19)

#smart solution

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

star(19)
