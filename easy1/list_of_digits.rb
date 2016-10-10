def digit_list(postive_int)
  array = []
  array = postive_int.to_s.split(//)
  array.map {| num| num.to_i}
end

puts digit_list(12345)
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]