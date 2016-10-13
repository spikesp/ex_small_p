def staggered_case(string)
  result = string.chars
  count = 0
  result.each do |char|
    if /[[:alpha:]]/.match(char) != nil
      if count.even?
        char.upcase!
        count += 1
      else
        char.downcase!
        count += 1
      end
    end
  end  
  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'