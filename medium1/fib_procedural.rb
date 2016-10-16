def fibonacci(n)
  n2 = 1
  n1 = 1  
  result = 0
  (n-2).times do |num|   
    result = n2  + n1
    n2 ,n1 =  n2 + n1,n2
    end
    result
end

p fibonacci(100_001)
