def swapcase(string)
  result = string.chars.map do |char|
    if char.match(/[[:upper:]]/)
      char.downcase
    else
      char.upcase
    end
  end
  result.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'