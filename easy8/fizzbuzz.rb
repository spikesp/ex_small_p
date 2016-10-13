def fizzbuzz(first, last)
  result = []
  (first..last).to_a.each do |num|
    if num % 3 == 0 and num % 5 == 0
      result << 'fizzbuzz'      
    elsif num % 5 == 0
      result << 'buzz'
    elsif num % 3 == 0
      result << 'fizz'
    else
      result << num
    end
  end
  result.join(',') 
end

p fizzbuzz(1, 15)
