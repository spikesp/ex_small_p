def palindromic_number?(integer)
  integer.to_s.reverse == integer.to_s
end

p palindromic_number?(34543) == true
p palindromic_number?(123210)
p palindromic_number?(22) == true
p palindromic_number?(5) == true
