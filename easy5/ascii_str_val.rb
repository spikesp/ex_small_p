def ascii_value(string)
  value = []
  string.chars.each { |char| value << char.ord }
  if value.empty?
    0
  else
    value.reduce(:+)
  end
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('')