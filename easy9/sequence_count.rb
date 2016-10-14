def sequence(count, number)
  arr = []
  if count == 0
    arr
  else
    1.upto(count) { |time| arr << number * time}
    arr
  end
end

p sequence(5, 1)
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

def sequence(count, first)
  (1..count).map { |idx| idx * first }
end



