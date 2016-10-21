def balanced?(string)
  parentheses = []
  string.chars.each { |char| parentheses << char if char == ')' or char == '('}
  if parentheses.first == ')' or parentheses.last == '('
    false
  elsif parentheses.size.even? and parentheses.count(')') == parentheses.count('(')
    true
  else false
  end
end



p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false