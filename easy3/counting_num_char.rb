puts "Please write word or multiple words:"
input = gets.chomp
number_of_char = input.delete(" ").size
puts "There are #{number_of_char} characters in #{input}"
