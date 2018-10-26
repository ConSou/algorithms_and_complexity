def binary_search(collection, value, low=0, high=collection.length - 1)

  if low > high
    return "Value not found."
  end

  mid = (low + high) / 2

  if collection[mid] == value
    return mid
  elsif collection[mid] > value
    high = mid - 1
  else
    low = mid + 1
  end
  binary_search(collection, value, low, high)
end

array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 100]
puts binary_search(array, 100)
