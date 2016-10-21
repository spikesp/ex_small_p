def egyptian(rational)
  denominator = 1
  result = 0.to_r
  array = []
  loop do
    if result.to_r == rational
      break
    elsif result < rational
      result += Rational(1, denominator)
      if result > rational
        result -= Rational(1, denominator)
        denominator += 1
      elsif result < rational
        array << denominator
        denominator += 1
      else
        array << denominator
        break
      end
    end
  end
  array
end

def unegyptian(array)
  numerator = 1
  result = 0.to_r
  0.upto(array.size - 1) do |num|
    result += Rational(1, array[num])
  end
  result 

end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)