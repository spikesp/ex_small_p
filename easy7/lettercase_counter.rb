def letter_case_count(string)
  result = {}
  result[:lowercase] = string.scan(/[[:lower:]]/).size
  result[:uppercase] = string.scan(/[[:upper:]]/).size
  result[:neither] = string.length - (result[:lowercase] + result[:uppercase])
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef')
p letter_case_count('123') 
p letter_case_count('') 
