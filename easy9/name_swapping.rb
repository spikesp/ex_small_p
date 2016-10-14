def swap_name(string)
  name = string.split
  "#{name.last}, #{name.first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

def swap_name(name)
  name.split(' ').reverse.join(', ')
end


