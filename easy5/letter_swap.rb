def swap(string)
  arr = string.split(' ')
  arr.map do |char|
    temp_str = ''
    temp_str = char[0]
    char[0] = char[-1]
    char[-1] = temp_str
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is')

p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'