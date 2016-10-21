def letter_percentages(string)
  string_size = string.size
  result = Hash.new
  result['lowercase'] = (string.scan(/[[:lower:]]/).size * 100) / string_size
  result['uppercase'] = (string.scan(/[[:upper:]]/).size * 100) / string_size
  result['neither'] = 100 - result['lowercase'] - result['uppercase']
  result
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')