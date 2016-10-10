puts "what is your name?"
name = gets.chomp

if name.include? '!'
  name.delete!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
