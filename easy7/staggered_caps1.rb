def staggered_case(string)
  result = string.chars.each_with_index do |char, index|
    if index.even?
      char.upcase!
    else
      char.downcase!
    end
  end
  result.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'