def triangle(angle1, angle2, angle3)
  degrees = [angle1, angle2, angle3]
  if degrees.include?(0) == true or degrees.reduce(:+) != 180
    :invalid
  elsif degrees.include?(90)
    :right
  elsif angle1 > 90 or angle2 > 90 or angle3 > 90
    :obtuse
  else
    :acute  # degrees.all ? { |angle| angle < 90 }
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid