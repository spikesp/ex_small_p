def real_palindrome?(string)
  result = []
  string.scan(/\w+/).each do | word|
    if word.downcase.reverse == word
      result << true
    else
      result << false
    end
  end

  if result.include?("False") == false
    true
  else
    false
  end
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false