# This method takes n arrays as input and combine them in sorted ascending  order

def poorly_written_ruby(*arrays)
  combined_array = arrays.pop()
  arrays.each do |array|
    array.each do |value|
      combined_array << value
    end
  end

  sorted_array = [combined_array.pop()]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end

array_one = (1..5).to_a.shuffle
array_two = (10..15).to_a.shuffle
array_three = [7, 20, 8, 17, 16]
poorly_written_ruby(array_one, array_two, array_three)
