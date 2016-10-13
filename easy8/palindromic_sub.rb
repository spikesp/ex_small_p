def substrings(string)
  result = []
  0.upto(string.size - 1) do |count|
    0.upto(string.size - count -1 ) { |index| result << string[count, index + 1]}
  end
  result
end

def palindromes(string)
  result = []
  substrings(string).each { |word| result << word if word == word.reverse && word.size > 1 }
  result
end

p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]

p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]