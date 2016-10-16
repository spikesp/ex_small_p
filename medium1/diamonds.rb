def diamond(number)
  star_arr = []
  (1..number).to_a.each { |num| star_arr << num if num.odd? }
  (number/2).downto(0) do |index|
    space = ' ' * index
    star = '*' * star_arr.reverse[index]
    puts "#{space}#{star}"
  end
  1.upto(number/2) do |index|
    space = ' ' * index
    star = '*' * star_arr.reverse[index]
    puts "#{space}#{star}"
  end
end

diamond(7)
