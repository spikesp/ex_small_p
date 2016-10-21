# def triangle(side0, side1, side2)
#   array = [side0, side1, side2]
#   if side0 == 0 or side1 == 0 or side2 == 0
#     :invalid
#   elsif side0 > side1 + side2 or side1 > side0 + side2 or side2 > side1 + side0
#     :invalid
#   elsif array.uniq.size == 1
#     :equilateral
#   elsif array.uniq.size == 2
#     :isosceles
#   elsif array.uniq.size == 3
#     :scalene
#   end
# end


# rubyish solution
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case  
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when sides.uniq.size == 1
    :equilateral
  when sides.uniq.size == 2
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
