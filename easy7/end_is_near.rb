def penultimate(string)
  result = string.split
  result[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'