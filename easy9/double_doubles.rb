def twice(number)
  arr = number.to_s
  if number.to_s.size.odd?
    number * 2
  else
    if arr[0, arr.size / 2] != arr[arr.size / 2 , arr.size / 2]
      number * 2
    else
      number
    end
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5)
