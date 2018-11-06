# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten
  bubble_sort(combined_array)
end

def bubble_sort(collection)
  return collection if collection.size <= 1
  swapped = true
  while swapped do
    swapped = false
    0.upto(collection.size-2) do |i|
    if collection[i] > collection[i+1]
      collection[i], collection[i+1] = collection[i+1], collection[i]
      swapped = true
    end
  end
end
collection
end

 array_one = (1..5).to_a.shuffle
 array_two = (10..15).to_a.shuffle
 array_three = [7, 20, 8, 17, 16]
 poorly_written_ruby(array_one, array_two, array_three)
