def greetings(arr, hash)
  puts "hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around." 
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })