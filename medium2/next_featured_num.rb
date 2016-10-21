def featured(num)
  next_num = num + 1
  loop do   
    if next_num.odd? and next_num.to_s.chars.uniq.size == next_num.to_s.chars.size and next_num % 7 == 0
      return next_num
    else
      next_num += 1
    end
  end
end

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
p featured(999_999_987)
p featured(999_999_987) == 1_023_456_987