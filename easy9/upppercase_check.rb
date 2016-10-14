def uppercase?(string)
  string.scan(/[[:alpha:]]/) == string.scan(/[[:upper:]]/) ? true : false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

def uppercase?(string)
  string == string.upcase
end

