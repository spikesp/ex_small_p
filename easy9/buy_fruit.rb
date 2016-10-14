def buy_fruit(array)
  correct_array = []
  array.each { |item| item[1].times do correct_array << item[0] end}
  correct_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])