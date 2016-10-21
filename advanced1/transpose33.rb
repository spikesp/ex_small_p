matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(array)
  new_matrix = [[], [], []]
  0.upto(array.size - 1) do |row|
    array.each_with_index { |colum, index| new_matrix[row][index] = colum[row]}
  end
  new_matrix
end

p transpose(matrix)
p matrix

#smart solution

def transpose(matrix)
  result = []
  (0..2).each do |colunm_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

