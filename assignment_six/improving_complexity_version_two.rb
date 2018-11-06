# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten
  merge_sort(combined_array)
end

def merge_sort(collection)
  if collection.length <= 1
    collection
  else
    mid = (collection.length / 2).floor
    left = merge_sort(collection[0..mid - 1])
    right = merge_sort(collection[mid..collection.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

 array_one = (1..5).to_a.shuffle
 array_two = (10..15).to_a.shuffle
 array_three = [7, 20, 8, 17, 16]
 poorly_written_ruby(array_one, array_two, array_three)
