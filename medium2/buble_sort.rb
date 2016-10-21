def bubble_sort!(array)
  1.upto(array.size) do |num|
    0.upto(array.size - 2) do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end
  array 
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)

# solution
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index |
      next if array[index -1 ] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end