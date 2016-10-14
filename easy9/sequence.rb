def sequence(last)
  (1..last).to_a
end

p sequence(5)
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]