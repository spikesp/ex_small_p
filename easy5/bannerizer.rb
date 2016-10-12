def print_in_box(string)
  hifon = '-' * string.length
  space = ' ' * string.length
  puts "+-#{hifon}-+"
  puts "| #{space} |"
  puts "| #{string} |"
  puts "| #{space} |"
  puts "+-#{hifon}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')