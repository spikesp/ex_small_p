vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  vehicles_uniq = array.uniq
  vehicles_num = []
  vehicles_uniq.each do |vehicle|
    vehicles_num << array.count(vehicle)
  end
  vehicles_uniq.size.times do |i|
    puts "#{vehicles_uniq[i]} => #{vehicles_num[i]}" 
  end
end

count_occurrences(vehicles)


# refactor

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end