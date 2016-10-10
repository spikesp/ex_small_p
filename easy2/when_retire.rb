YEAR_NOW = 2016

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire_age = gets.to_i

year_for_work = retire_age - age
retire_year = year_for_work + YEAR_NOW

puts "It's #{YEAR_NOW}. You will retire in #{retire_year}."
puts "You have only #{year_for_work} years of work to go!"


#solution

print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}. "
puts  "You have only #{work_years_to_go} years of work to go!"