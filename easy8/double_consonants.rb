def double_consonants(string)
  result = []
  string.chars.each do |char|
    if /[^aeiouAEIOU0-9[:blank:][:punct:]]/.match(char)
      result << char * 2
    else
      result << char
    end
  end
  result.join
end

p double_consonants('String')
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""