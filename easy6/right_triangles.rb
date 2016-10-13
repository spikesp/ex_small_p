def triangle(number)
  star_num = 0

  number.times do |num|
    space = ' ' * number   
    star = '*' * star_num 
    puts "#{space}#{star}"
    number -= 1
    star_num += 1
  end
end

triangle(5)
triangle(9)