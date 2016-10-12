def crunch(string)
  string.squeeze
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''