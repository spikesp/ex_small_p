def show_multiplicative_average(array)
  result = array.reduce(:*) / array.size.to_f
  format('%.3f', result)
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])