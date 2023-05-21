
def snail(array)
  result = []

  while array.flatten.any?
    # Move right
    result.concat(array.shift)

    # Move down
    array.each { |row| result << row.pop } if array.any?

    # Move left
    result.concat(array.pop.reverse) if array.any?

    # Move up
    array.reverse.each { |row| result << row.shift } if array.any?
  end

  result
end

# Test the code
array = [[1, 2, 3],
         [4, 5, 6],
         [7, 8, 9]]
         
result = snail(array)
puts result.inspect
