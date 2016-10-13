def repeater(string)
  result = []
  string.chars.each { |letter| result << letter * 2}
  result.join

end

p repeater('Hello')
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''