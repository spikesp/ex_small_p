def multisum(number)
  array_num = []
  (1..number).to_a.each { |num| array_num << num if num % 3 == 0 or num % 5 == 0}
  array_num.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168