f = File.readlines('test.txt')
size_arr = []
f.join.split(/\.|\?|!/).each { |word| size_arr << word.split(' ').size }
puts size_arr.sort.last